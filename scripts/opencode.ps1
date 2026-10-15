$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot
$opencodeRoot = Join-Path $repoRoot '.opencode'
$install = Get-Content -LiteralPath (Join-Path $opencodeRoot 'install.json') -Raw | ConvertFrom-Json
if ($install.version -notmatch '^\d+\.\d+\.\d+$') {
    throw 'Invalid OpenCode version in .opencode\install.json.'
}
$architecture = [System.Runtime.InteropServices.RuntimeInformation]::OSArchitecture.ToString()
if ($null -eq $install.windows.$architecture) {
    throw "Unsupported Windows architecture: $architecture. OpenCode supports X64 and Arm64."
}
$executable = Join-Path $opencodeRoot "bin\$($install.version)-$architecture\opencode.exe"
if (-not (Test-Path -LiteralPath $executable -PathType Leaf)) {
    throw 'OpenCode is not installed for this repository. Run .\scripts\setup-opencode.ps1 first.'
}

$runtime = Join-Path $opencodeRoot 'runtime'
$environment = @{
    XDG_CONFIG_HOME = Join-Path $runtime 'config'
    XDG_DATA_HOME = Join-Path $runtime 'data'
    XDG_CACHE_HOME = Join-Path $runtime 'cache'
    XDG_STATE_HOME = Join-Path $runtime 'state'
    OPENCODE_CONFIG = Join-Path $opencodeRoot 'opencode.json'
    OPENCODE_CONFIG_DIR = $opencodeRoot
    OPENCODE_CONFIG_CONTENT = $null
    OPENCODE_TUI_CONFIG = $null
    OPENCODE_DB = Join-Path $runtime 'data\opencode\opencode.db'
    # OpenCode uses this home override for global instruction and skill discovery.
    OPENCODE_TEST_HOME = Join-Path $runtime 'home'
    OPENCODE_DISABLE_CLAUDE_CODE = 'true'
    OPENCODE_DISABLE_AUTOUPDATE = 'true'
    TEMP = Join-Path $runtime 'tmp'
    TMP = Join-Path $runtime 'tmp'
    TMPDIR = Join-Path $runtime 'tmp'
    npm_config_cache = Join-Path $runtime 'cache\npm'
    BUN_INSTALL = Join-Path $runtime 'bun'
    BUN_INSTALL_CACHE_DIR = Join-Path $runtime 'cache\bun'
}
$previousEnvironment = @{}
$exitCode = 1
try {
    foreach ($directory in @(
        $environment.XDG_CONFIG_HOME, $environment.XDG_DATA_HOME,
        $environment.XDG_CACHE_HOME, $environment.XDG_STATE_HOME,
        $environment.OPENCODE_TEST_HOME, $environment.TEMP,
        $environment.npm_config_cache, $environment.BUN_INSTALL,
        $environment.BUN_INSTALL_CACHE_DIR
    )) {
        New-Item -ItemType Directory -Path $directory -Force | Out-Null
    }
    foreach ($name in $environment.Keys) {
        $previousEnvironment[$name] = [Environment]::GetEnvironmentVariable($name, 'Process')
        [Environment]::SetEnvironmentVariable($name, $environment[$name], 'Process')
    }
    Push-Location -LiteralPath $repoRoot
    try {
        # Windows PowerShell treats redirected native stderr as PowerShell errors.
        $ErrorActionPreference = 'Continue'
        $global:LASTEXITCODE = $null
        & $executable @args
        if ($null -eq $LASTEXITCODE) {
            throw 'Failed to start the local OpenCode executable.'
        }
        $exitCode = $LASTEXITCODE
    }
    finally {
        $ErrorActionPreference = 'Stop'
        Pop-Location
    }
}
finally {
    foreach ($name in $previousEnvironment.Keys) {
        [Environment]::SetEnvironmentVariable($name, $previousEnvironment[$name], 'Process')
    }
}
exit $exitCode
