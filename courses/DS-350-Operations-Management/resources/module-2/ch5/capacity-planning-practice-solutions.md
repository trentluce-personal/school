# Strategic capacity planning: instructor practice solutions

> Readable copy of [the instructor's solutions](D_Strategic%20Capacity%20Planning_AS%282%29.html),
> which remain authoritative. Equations are restored from the source's fragmented
> text, with its results and rounding retained. Graphs remain in the original.

## 1. Utilization and efficiency

### a. Loans

Actual output = 7 loans/day; design capacity = 10 loans/day; effective capacity
= 8 loans/day.

```text
Utilization = Actual output / Design capacity = 7/10 = 70%
Efficiency = Actual output / Effective capacity = 7/8 = 87.5%
```

### b. Furnaces

Actual output = 4 furnaces/day; design capacity = 6 furnaces/day; effective
capacity = 5 furnaces/day.

```text
Utilization = 4/6 = 67%
Efficiency = 4/5 = 80%
```

### c. Comparing ratios

Not necessarily. If design capacity is relatively high, utilization could be low
even when efficiency is high.

## 2. Job shop

```text
Actual capacity = 80% of Effective capacity                    (1)
Effective capacity = 50% of Design capacity                    (2)
Actual capacity = 0.80 × (0.50 × Design capacity)
                = 0.40 × Design capacity
Design capacity = Actual capacity / 0.40 = 8 / 0.40 = 20 jobs
```

The problem's time unit is one week.

## 3. Pottery plant

FC = $9,200/month; VC = $0.70/unit; Rev = $0.90/unit.

### a. Break-even quantity

```text
Q_BEP = FC / (Rev - VC) = $9,200 / ($0.90 - $0.70) = 46,000 units
```

### b. Profit at the specified volumes

```text
Profit = Rev × Q - (FC + VC × Q)
P_61,000 = $0.90(61,000) - [$9,200 + $0.70(61,000)] = $3,000
P_87,000 = $0.90(87,000) - [$9,200 + $0.70(87,000)] = $8,200
```

### c. Volume for specified profit

```text
Q = (Specified profit + FC) / (Rev - VC)
  = ($16,000 + $9,200) / ($0.90 - $0.70)
  = 126,000 units
```

### d. Volume for specified revenue

```text
Total revenue = Rev × Q
Q = Total revenue / Rev = $23,000 / $0.90 = 25,556 units
```

### e. Graph

See the graph in the [original](D_Strategic%20Capacity%20Planning_AS%282%29.html).
Its text labels include TR = $90,000 and TC = $79,200 at Q = 100,000 units, an
initial cost of $9,200, and axes "Cost" and "Volume (units)." Cost-axis labels
include $50,000 and $100,000.

## 4. Bottleneck machine

| Alternative | FC | Rev per unit | VC per unit |
|---|---|---|---|
| A | $40,000 | $15 | $10 |
| B | $30,000 | $15 | $11 |

### a. Break-even quantities

```text
Q_BEP = FC / (Rev - VC)
Q_BEP,A = $40,000 / ($15 - $10) = 8,000 units
Q_BEP,B = $30,000 / ($15 - $11) = 7,500 units
```

### b. Equal-profit volume

```text
Profit = Q × (Rev - VC) - FC
A's profit = B's profit
Q($15 - $10) - $40,000 = Q($15 - $11) - $30,000
Q = 10,000 units
```

### c. At annual demand of 12,000 units

```text
P_A = 12,000($15 - $10) - $40,000 = $20,000
P_B = 12,000($15 - $11) - $30,000 = $18,000
```

A yields the higher profit.

## 5. Felt-tip pens

Demand Q = 30,000; FC = $25,000; VC = $0.37/pen.

### a. Break-even quantity at $1 per pen

```text
Q_BEP = $25,000 / ($1.00 - $0.37) = 39,683 units
```

### b. Price for specified profit of $15,000

```text
Q = (Specified profit + FC) / (Rev - VC)
30,000 = ($15,000 + $25,000) / (Rev - $0.37)
Rev = $1.71 (rounded up)
```
