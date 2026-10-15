param(
    [switch]$Force
)

$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot
$opencodeRoot = Join-Path $repoRoot '.opencode'
$install = Get-Content -LiteralPath (Join-Path $opencodeRoot 'install.json') -Raw | ConvertFrom-Json
if ($install.version -notmatch '^\d+\.\d+\.\d+$') {
    throw 'Invalid OpenCode version in .opencode\install.json.'
}
$architecture = [System.Runtime.InteropServices.RuntimeInformation]::OSArchitecture.ToString()
$asset = $install.windows.$architecture
if ($null -eq $asset) {
    throw "Unsupported Windows architecture: $architecture. OpenCode supports X64 and Arm64."
}
if ($asset.asset -notmatch '^opencode-windows-[a-z0-9-]+\.zip$' -or $asset.sha256 -notmatch '^[a-f0-9]{64}$') {
    throw 'Invalid OpenCode release asset or SHA-256 digest in .opencode\install.json.'
}
$binDirectory = Join-Path $opencodeRoot "bin\$($install.version)-$architecture"
$executable = Join-Path $binDirectory 'opencode.exe'
$launcher = Join-Path $PSScriptRoot 'opencode.ps1'

if ((Test-Path -LiteralPath $executable -PathType Leaf) -and -not $Force) {
    $version = & $launcher --version
    if ($LASTEXITCODE -ne 0 -or "$version".Trim() -ne $install.version) {
        throw 'The local OpenCode installation is invalid. Rerun setup with -Force to reinstall.'
    }
    Write-Host "OpenCode $version is already installed in this repository."
    return
}

$staging = Join-Path $opencodeRoot ('.setup-' + [Guid]::NewGuid().ToString('N'))
$previousProgressPreference = $ProgressPreference
$previousSecurityProtocol = [Net.ServicePointManager]::SecurityProtocol
try {
    New-Item -ItemType Directory -Path $staging | Out-Null
    $archive = Join-Path $staging $asset.asset
    $url = "https://github.com/anomalyco/opencode/releases/download/v$($install.version)/$($asset.asset)"
    Write-Host "Downloading OpenCode $($install.version) for Windows $architecture..."
    $ProgressPreference = 'SilentlyContinue'
    [Net.ServicePointManager]::SecurityProtocol = $previousSecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
    Invoke-WebRequest -UseBasicParsing -Uri $url -OutFile $archive
    if ((Get-FileHash -LiteralPath $archive -Algorithm SHA256).Hash -ne $asset.sha256) {
        throw 'OpenCode download failed SHA-256 verification. Nothing was installed.'
    }
    $extracted = Join-Path $staging 'extracted'
    Expand-Archive -LiteralPath $archive -DestinationPath $extracted
    $downloadedExecutable = Join-Path $extracted 'opencode.exe'
    if (-not (Test-Path -LiteralPath $downloadedExecutable -PathType Leaf)) {
        throw 'The OpenCode release archive does not contain opencode.exe.'
    }
    New-Item -ItemType Directory -Path $binDirectory -Force | Out-Null
    Move-Item -LiteralPath $downloadedExecutable -Destination $executable -Force
    $version = & $launcher --version
    if ($LASTEXITCODE -ne 0 -or "$version".Trim() -ne $install.version) {
        throw 'The installed OpenCode executable failed its version check.'
    }
    Write-Host "Installed OpenCode $version locally. Launch it with .\scripts\opencode.ps1"
}
finally {
    $ProgressPreference = $previousProgressPreference
    [Net.ServicePointManager]::SecurityProtocol = $previousSecurityProtocol
    if (Test-Path -LiteralPath $staging) {
        Remove-Item -LiteralPath $staging -Recurse -Force
    }
}
