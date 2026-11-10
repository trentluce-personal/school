# Forecasting practice problems

> Readable transcription of [I_Forecasting_AP(1).pdf](I_Forecasting_AP%281%29.pdf),
> which remains authoritative. Original problem numbers, data, and units are
> preserved; layout and punctuation are reformatted. This handout contains problems,
> not instructor solutions.

## Problem 2: National Scan

National Scan, Inc., sells radio frequency inventory tags. Monthly sales for a
seven-month period were as follows:

| Month | Sales (000 units) |
|---|---:|
| February | 19 |
| March | 18 |
| April | 15 |
| May | 20 |
| June | 18 |
| July | 22 |
| August | 20 |

a. Plot the monthly data on a sheet of graph paper.

b. Forecast September sales volume using each of the following:

1. The naive approach.
2. A five-month moving average.
3. A weighted average using .60 for August, .30 for July, and .10 for June.
4. Exponential smoothing with a smoothing constant of .20, assuming a March forecast of 19 (000).
5. A linear trend equation.

c. Which method seems least appropriate? Why? Refer to the plot from part a.

d. What does use of the term sales rather than demand presume?

## Problem 4: Electrical contractor

An electrical contractor's records during the last five weeks indicate the number
of job requests:

| Week | Requests |
|---|---:|
| 1 | 20 |
| 2 | 22 |
| 3 | 18 |
| 4 | 21 |
| 5 | 22 |

Predict requests for week 6 using:

a. Naive.

b. A four-period moving average.

c. Exponential smoothing with α = .30; use 20 for the week 2 forecast.

## Problem 5: Hand & Foot Cream

A cosmetic manufacturer's marketing department has developed a linear trend
equation to predict annual sales of its Hand & Foot Cream:

```text
F_t = 80 + 15t
F_t = annual sales (000 bottles)
t = time in years
```

a. Are annual sales increasing or decreasing? By how much?

b. Predict annual sales for year 6 using the equation.

## Problem 8: Mountain Airlines

Air travel on Mountain Airlines for the past 18 weeks was:

| Week | Passengers |
|---|---:|
| 1 | 405 |
| 2 | 410 |
| 3 | 420 |
| 4 | 415 |
| 5 | 412 |
| 6 | 420 |
| 7 | 424 |
| 8 | 433 |
| 9 | 438 |
| 10 | 440 |
| 11 | 446 |
| 12 | 451 |
| 13 | 455 |
| 14 | 464 |
| 15 | 466 |
| 16 | 474 |
| 17 | 476 |
| 18 | 482 |

a. Explain why an averaging technique would not be appropriate for forecasting.

b. Use an appropriate technique to forecast the expected passengers for the next
three weeks.

## Problem 21: Bottled water forecast accuracy

Two forecasting techniques, F1 and F2, forecast demand for cases of bottled water:

| Period | Actual demand | F1 predicted demand | F2 predicted demand |
|---|---:|---:|---:|
| 1 | 68 | 66 | 66 |
| 2 | 75 | 68 | 68 |
| 3 | 70 | 72 | 70 |
| 4 | 74 | 71 | 72 |
| 5 | 69 | 72 | 74 |
| 6 | 72 | 70 | 76 |
| 7 | 80 | 71 | 78 |
| 8 | 78 | 74 | 80 |

a. Compute MAD for each set of forecasts. Which forecast appears more accurate?
Explain.

b. Compute MSE for each set of forecasts. Which forecast appears more accurate?

c. In practice, either MAD or MSE would be employed to compute forecast errors.
What factors might lead a manager to choose one rather than the other?

d. Compute MAPE for each data set. Which forecast appears more accurate?
