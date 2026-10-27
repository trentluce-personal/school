# Quality control: instructor practice solutions

> Readable copy of [the instructor's solutions](C_Quality%20Control_AS.html), which
> remain authoritative. Equations are restored from fragmented text; results and
> rounding follow the source. Chart data and limits replace repeated axis labels;
> plotted charts remain in the original. Source inconsistencies are noted below.

## Problem-number crosswalk

| Practice handout | Solution handout | Topic |
|---|---|---|
| 1 | 3 | Wiper-blade replacement times |
| 2 | 4 | Software upgrade times |
| 3 | 6 | MRI retests |
| 4 | 7 | Mail-delivery complaints |

## 3. Wiper-blade replacement times

Time is continuous, so this is a variable control-chart problem. Calculate both
X-bar and R charts; both must be in control for the process to be in control.

There are six samples, each with 20 observations (n = 20).

| Sample | Mean | Range |
|---|---|---|
| 1 | 3.06 | 0.42 |
| 2 | 3.15 | 0.50 |
| 3 | 3.11 | 0.41 |
| 4 | 3.13 | 0.46 |
| 5 | 3.06 | 0.46 |
| 6 | 3.09 | 0.45 |
| Average (CL) | 3.100 | 0.450 |

For n = 20, the three-sigma factors are A2 = 0.18, D3 = 0.41, D4 = 1.59.

```text
X-bar chart:
UCL = X-double-bar + A2 × R-bar = 3.100 + 0.18(0.450) = 3.181
LCL = X-double-bar - A2 × R-bar = 3.100 - 0.18(0.450) = 3.019

R chart:
UCL = D4 × R-bar = 1.59(0.450) = 0.716
LCL = D3 × R-bar = 0.41(0.450) = 0.185
```

All sample means and ranges are within their respective limits. The process is
in control.

The instructor states that the only criterion used in this class is whether
sample values fall within LCL and UCL. In practice, other rules apply, such as
the absence of trends and points bouncing around the mean like a heartbeat.

## 4. Software upgrade times

This is also a variable control-chart problem. The six samples have five
observations each (n = 5). Calculate sample means and ranges first. Each column
is a sample.

| Observation | Sample 1 | Sample 2 | Sample 3 | Sample 4 | Sample 5 | Sample 6 |
|---|---|---|---|---|---|---|
| 1 | 79.2 | 80.5 | 79.6 | 78.9 | 80.5 | 79.7 |
| 2 | 78.8 | 78.7 | 79.6 | 79.4 | 79.6 | 80.6 |
| 3 | 80.0 | 81.0 | 80.4 | 79.7 | 80.4 | 80.5 |
| 4 | 78.4 | 80.4 | 80.3 | 79.4 | 80.8 | 80.0 |
| 5 | 81.0 | 80.1 | 80.8 | 80.6 | 78.8 | 81.1 |
| Mean | 79.48 | 80.14 | 80.14 | 79.60 | 80.02 | 80.38 |
| Range | 2.6 | 2.3 | 1.2 | 1.7 | 2.0 | 1.4 |

CL for X-bar = 79.960; CL for R = 1.867.
For n = 5, A2 = 0.58, D3 = 0, D4 = 2.11.

```text
X-bar chart:
UCL = 79.960 + 0.58(1.867) = 79.960 + 1.083 = 81.043
LCL = 79.960 - 0.58(1.867) = 79.960 - 1.083 = 78.877

R chart:
UCL = 2.11(1.867) = 3.939
LCL = 0(1.867) = 0.000
```

All sample means and ranges are within their respective limits. The process is
in control.

## 6. MRI retests

The source identifies this as an attribute chart because values are discrete.
It uses a p-chart, with n = 200 and z = 2.

| Sample | Retests | Proportion calculation | Proportion |
|---|---|---|---|
| 1 | 1 | 1/200 | 0.005 |
| 2 | 2 | 2/200 | 0.010 |
| 3 | 2 | 2/200 | 0.010 |
| 4 | 0 | 0/200 | 0.000 |
| 5 | 2 | 2/200 | 0.010 |
| 6 | 1 | 1/200 | 0.005 |
| 7 | 2 | 2/200 | 0.010 |
| 8 | 0 | 0/200 | 0.000 |
| 9 | 2 | 2/200 | 0.010 |
| 10 | 7 | 7/200 | 0.035 |
| 11 | 3 | 3/200 | 0.015 |
| 12 | 2 | 2/200 | 0.010 |
| 13 | 1 | 1/200 | 0.005 |

Take the average of the proportions for p-bar (CL). Alternatively, divide total
defectives by total observations:

```text
Total defectives = 25
p-bar = 25 / [13(200)] = 0.0096 = CL
Control limits = p-bar ± z × sqrt[p-bar(1 - p-bar) / n]
               = 0.0096 ± 2 × sqrt[0.0096(1 - 0.0096) / 200]
               = 0.0096 ± 0.0138
UCL = 0.0234
LCL = -0.0042; use 0 because the lower limit cannot be negative.
```

Sample 10's proportion is above UCL. The process is not in control.

## 7. Mail-delivery complaints

The source identifies this as an attribute chart and uses a c-chart with z = 3.

| Day | Complaints |
|---|---|
| 1 | 4 |
| 2 | 10 |
| 3 | 14 |
| 4 | 8 |
| 5 | 9 |
| 6 | 6 |
| 7 | 5 |
| 8 | 12 |
| 9 | 13 |
| 10 | 7 |
| 11 | 6 |
| 12 | 4 |
| 13 | 2 |
| 14 | 10 |

```text
Total complaints = 110
c-bar = 110 / 14 = 7.857 = CL
Control limits = c-bar ± z × sqrt(c-bar)
               = 7.857 ± 3 × sqrt(7.857)
               = 7.857 ± 8.409
UCL = 16.266
LCL = -0.552; use 0 because the lower limit cannot be negative.
```

All points are within LCL and UCL. The process is in control.

### Source inconsistencies

- The source calls n > 0 the reason to use a p-chart and n = 0 the reason to use
  a c-chart. These are the handout's statements, not general chart-selection
  rules. The slides distinguish proportion of defectives (p) from number of
  defects per unit (c).
- The complaint summation printed in the source repeats an extra `+ 4`:
  `4 + 10 + 14 + 8 + 9 + 6 + 5 + 12 + 13 + 7 + 6 + 4 + 4 + 2 + 10`.
  Its table has 14 days totaling 110, which matches the stated total and the
  subsequent limits. The c-chart's horizontal labels stop at 13 in the export.
