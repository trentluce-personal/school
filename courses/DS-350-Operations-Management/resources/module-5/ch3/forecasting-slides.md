# Chapter 3: Forecasting slides

> Readable text companion to [J-Forecasting _A(1).html](J-Forecasting%20_A%281%29.html),
> which remains authoritative. Bullets are consolidated and fragmented formulas
> are typeset as plain text. The original contains image-only charts and examples
> between the time-series components and models sections; view those in the HTML.

## Outline

The slides cover what a forecast is, users of forecasts, factors affecting
forecasts, forecasting steps, types of forecasts, and forecasting models.

## What is a forecast?

A forecast is a statement about the future value of a variable of interest, such
as demand. Forecasts affect decisions and activities throughout an organization.
Underforecasting can lose customers; overforecasting can create excess inventory.
Forecasting also matters in finance.

The finance example asks students to select a financial website, pick a stock
(such as DELL), choose its chart, and use technical analysis to overlay different
moving-average curves on the time series.

Forecasts are rarely perfect because of randomness. They are more accurate for
groups than individuals and become less accurate as the time horizon increases.
Good forecasts are timely, reliable, accurate, meaningful, and easy to use.
Monitor their accuracy continuously.

## Factors affecting forecasts

The two most important factors are cost and accuracy. Other considerations include
historical data, computers, time to gather and analyze data, and the forecast
horizon.

## Types of forecasts

- Judgmental forecasts use subjective inputs.
- Time-series forecasts use historical data and assume the future will resemble the past.
- Associative models use explanatory variables to predict the future.

Judgmental inputs include executive opinions, sales force opinions, consumer
surveys, and outside opinion. The slides describe the Delphi method as using
manager and staff opinions to achieve a consensus forecast.

## Time-series components

- Trend: long-term movement in data.
- Seasonality: short-term regular variations in data.
- Cycle: wavelike variations lasting more than one year.
- Irregular variations: unusual circumstances.
- Random variations: chance.

The original follows these definitions with image-only figures and examples.
Their chart labels, numerical examples, and formulas require the original view.

## Time-series models and selection

The models listed are naive, moving average (MA), weighted moving average (WMA),
exponential smoothing (ES), and simple linear regression.

| Pattern | Models listed in the slides |
|---|---|
| Random variation | MA, WMA, ES |
| Random variation plus trend | Simple linear regression |
| Random variation plus trend and seasonality | Simple linear regression and seasonal factors |

## Moving averages

A moving average averages recent actual values and updates as new values become
available. A weighted moving average gives more recent values greater weight.

```text
MA_n = sum of n recent actual values / n
```

## Exponential smoothing

This weighted averaging method uses the previous forecast plus a percentage of
its forecast error. The premise is that recent observations may have the highest
predictive value.

```text
F_t = F_(t-1) + α(A_(t-1) - F_(t-1))
A - F = forecast error
α = smoothing constant
```

## Simple linear regression

Fit a trend line to the time series using simple linear regression. The slides
define:

- `F_t`: forecast for period t.
- `t`: specified number of time periods.
- `a`: value of F_t at t = 0.
- `b`: slope of the line.

The instructor's [exam study guide](../../exams/exam-study-guide.md) states the
straight-line form as `Y = a + bX`.

## Forecast accuracy and monitoring

Error is the difference between actual and predicted values. MAD averages absolute
errors; MSE measures squared errors; MAPE averages absolute percentage errors.

The monitoring slide's fragmented equations read:

```text
MAD = Σ|Actual - Forecast| / n
MSE = Σ(Actual - Forecast)² / (n - 1)
```

The MSE denominator in these slides is `n - 1`. Keep that convention when using
these course materials.

A control chart visually monitors forecast errors and detects nonrandomness. The
slides prefer it to MAPE for monitoring. Forecast errors are in control when all
errors fall within the control limits and show no patterns such as trends or
cycles.
