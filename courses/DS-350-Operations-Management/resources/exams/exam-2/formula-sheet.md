# Exam 2 formula sheet

> Readable companion to [Formula sheet_2.html](Formula%20sheet_2.html),
> which remains authoritative. Fractions, summations, and subscripts fragmented
> in the HTML text are typeset below. Variable names are clarified for readability.

## Capacity

```text
Utilization = Actual output / Design capacity
Efficiency = Actual output / Effective capacity
```

## Decision theory

```text
EVPI = Expected payoff under certainty - Expected payoff under risk
```

## Assembly-line balancing

```text
Cycle time (CT) = Operating time available / Desired output (demand)
Theoretical minimum workstations = Σt_i / CT, rounded up
Assembly-line efficiency (%) = [Σt_i / (n × CT)] × 100
Balance delay (%) = Total idle time (%) = 100 - Efficiency (%)
```

Here `t_i` is an individual task time and `n` in the efficiency formula is the
number of workstations. The original specifies rounding the theoretical minimum
up regardless of the fraction and multiplying the efficiency ratio by 100.

## Center of gravity

For `n` locations with equal weights:

```text
x = Σx_i / n
y = Σy_i / n
```

For unequal weights `Q_i`:

```text
x = Σ(x_i × Q_i) / ΣQ_i
y = Σ(y_i × Q_i) / ΣQ_i
```
