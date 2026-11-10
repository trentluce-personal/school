# DS 350 exam preparation study guide

> Readable, reformatted companion to
> [DS 350 Exam Study Guide Sue.html](DS%20350%20Exam%20Study%20Guide%20Sue.html),
> which remains authoritative. Repeated headings are consolidated. This is the
> instructor's study guidance, not an exam or answer key.

## General instructions

- Each exam has 30 multiple-choice questions worth 2 points each. A problem may
  support several questions, and the problem repeats for convenience. One question
  appears at a time.
- Exams cover problem solving; quizzes cover concepts.
- Practice with each chapter's practice problems and solutions. Homework alone
  does not cover the full range of exam problems.
- Watch the voice-over examples. Print the solution PDFs to follow along, then
  try the problems yourself.
- Use narrated Excel and guided example videos to learn both manual and Excel
  approaches.
- Excel can save time, but the course does not require it. Exam time allows for
  manual work with calculators.
- You will not be asked to produce graphs. You may need to interpret given graphs
  or make simple graphs by hand or in Excel to answer a question.

The outline and Blackboard formula sheets supplement reading, videos, and assigned
problems. The instructor recommends voice-over and narrated Excel videos for
easier solution methods in many chapters.

## Exam 1

### Chapter 1: Introduction to operations management

This chapter has no problems.

### Chapter 2: Competitiveness, strategy, and productivity

Calculate and analyze partial (labor), total, and multifactor productivity.
Apply the formulas and determine increases, declines, and percentage growth in
productivity.

### Chapter 9: Management of quality

This chapter has a couple of simple graphing problems.

### Chapter 10: Quality control

- Understand variable and attribute charts: X-bar, R, p, and c charts.
- Choose the appropriate chart for the process and output type.
- Distinguish sample size `n` from the number of samples when selecting chart factors.
- Calculate center lines and upper and lower control limits using sigma factors.
- Identify out-of-control samples by graphing or inspecting the values.

Source note: the guide refers to "A3, D3, D4." The
[Exam 1 formula sheet](exam-1/formula-sheet.md) labels its X-bar factor `A2`.

### Chapter 5: Strategic capacity planning

- Calculate design capacity, effective capacity, actual output, efficiency, and utilization.
- Apply breakeven analysis using fixed cost, variable cost, and revenue. Calculate
  breakeven quantity, profit at a given output, and output for a desired profit or revenue.
- Compare alternatives using total cost, total revenue, and total profit at a given output.

## Exam 2

### Chapter 5S: Decision theory

- Apply maximin, maximax, Laplace, and minimax regret under uncertainty.
- Compute expected payoff under certainty, expected payoff under risk, and EVPI.
  Understand the distinction between uncertainty and risk.
- Use decision trees to identify the best course of action.

### Chapter 6: Process selection and facility layout

- Assign tasks to workstations using most following tasks, greatest positional
  weight, and trial and error. Use primary rules and secondary tiebreakers.
- The voice-over demonstrates a graphical task-assignment shortcut. The book's
  table method also works but takes more detail and time.
- Calculate minimum, maximum, and required cycle time.
- Determine the minimum number of workstations.
- Calculate idle time per cycle, percentage idle time, and assembly-line efficiency.

### Chapter 19: Linear programming

- Identify and meaningfully name decision variables.
- Formulate a maximizing or minimizing objective function and constraints using
  `<=`, `>=`, or `=`.
- Solve two-variable LPs graphically: draw constraints, identify the feasible
  region, and evaluate all corner points for objective value and decision variables.
- Find intersections by solving two equations in two unknowns.
- Determine slack and surplus; distinguish binding and nonbinding constraints.

The instructor says to listen to the voice-over example for graphical LP. A
narrated Excel example is also available; Excel can avoid the manual work.

### Chapter 8: Location planning and analysis

- Calculate total fixed and variable costs for locations at different demand
  levels. Compare costs and create a decision rule.
- Use cost-volume graphs to identify the lowest-cost envelope at a predicted output.
- Calculate and compare factor-rating composite scores.
- Compute facility coordinates using the center-of-gravity method.

## Exam 3

### Chapter 3: Forecasting

- Identify time-series components.
- Generate naive, MA, WMA, exponential smoothing, and simple linear regression forecasts.
- The guide assigns the first four techniques to random variation and regression
  to a series with a growth or decline trend.
- Fit and use `Y = a + bX`. You will not need to calculate `a` and `b` by hand;
  the exam supplies them when needed. Excel can obtain them from a chart trend line.
- Calculate `error = actual - forecast`, bias (sum of errors), MAD, and MSE.
- Develop forecast-error control charts and identify out-of-control errors.

### Chapter 12: Inventory management

- Calculate holding/carrying, ordering/setup, and purchasing costs. Record the
  notation for `D`, `S`, `H`, `I`, `Q`, and other variables correctly.
- Calculate EOQ and relevant costs, including total cost.
- For quantity discounts, graph the problem and find EOQ for each feasible cost
  curve. Use the price-break quantity when EOQ is infeasible, compare total costs,
  and choose the order quantity. The original calls this the "optional quantity."
- Calculate reorder points using daily demand and lead time.

### Chapter 13: MRP/ERP

- Interpret a bill of materials and its product structure tree.
- Determine component units or additional units needed by evaluating each branch
  manually. Filling MRP tables is not required.
- Determine the latest start time for an order so components are available for production.

### Chapter 17: Project management

- Draw activity-on-arc (AOA) diagrams from predecessors, successors, and task times;
  understand dummy variables as described in the guide.
- No algorithms are required. Use enumeration: list every start-to-finish path
  and calculate its total time. The longest path determines project duration.
- Critical activities have zero slack; delaying them delays the project.

### Chapter 15: Supply chain management

This chapter has no problems.
