# Quality control

> Readable text copy of [the instructor's slides](quality%20control%281%29.html),
> which remain authoritative. Decorative image fragments and repeated graph-axis
> labels are omitted. Image-only diagrams and tables remain in the original.

## Outline

- Process control
- Inspection
- Control charts
- X-bar and R charts
- P charts
- C charts
- Process capability

## Phases of quality assurance

The diagram runs from least progressive to most progressive:

| Phase | Description |
|---|---|
| Acceptance sampling | Inspection before/after production |
| Process control | Inspection and corrective action during production |
| Continuous improvement | Quality built into the process |

## Inspection issues

- Where to inspect in the process: before a costly operation, an irreversible
  process, or a covering process.
- How much/how often.
- Where/when.
- Centralized versus on-site.

The inspection-cost diagram plots cost against amount of inspection. It labels
cost of inspection, cost of passing defectives, total cost, and an optimal
amount of inspection. See the original for the curves.

## Process control

The slide labels SPC "Statistical Quality Control" and defines it as statistical
evaluation of process output during production of goods or delivery of service.
SPC increases quality of conformance: a product or service conforms to
specification.

## Control charts

Control charts are the tools used to implement SPC. Plot representative sample
statistics, such as sample means, obtained from a process over time. Average
(CL), upper (UCL), and lower control limits (LCL) define the range of acceptable
variation.

## Variation in SPC

- Random variation: natural variations in process output created by countless
  minor factors.
- Assignable variation (non-random): variation whose source can be identified.

The control-chart illustration plots mean against sample number (0 to 15), with
UCL and LCL. It contrasts normal variation due to chance with abnormal variation
due to assignable sources and marks an out-of-control point. The plotted points
remain in the original.

## Counting runs

The original contains illustrated run counts:

```text
Above/below median: B A A B A B B B A A B   (7 runs)
Up/down:            U U D U D U D U U D     (8 runs)
```

See the original for the plotted observations and their relationship to these
labels.

## Control-chart issues

- Where in the process to use control charts.
- What size samples to take.
- What type of control chart to use.
  - Variables can be measured even in fractions: length, weight, height,
    diameter, etc.
  - Attributes can be counted: pass/fail, defective/not defective, works/doesn't
    work, good/bad, yes/no, operate/doesn't operate, etc.

## Control charts for variables

- Mean control charts monitor average process performance (central tendency).
  X-bar means average or mean.
- Range control charts monitor process variation. R means range.

## Control charts for attributes

- p-chart: monitors the proportion of defectives in a process.
- c-chart: monitors the number of defects per unit.

## Process capability

The slide describes process capability as a comparison of control-chart limits
to design specification limits to determine whether the process can make
products within design specification (tolerance) limits.

The original includes image-only diagrams/tables titled:

- "Reducing Process Variance So that All Parts Are within Specification
  (Tolerance)."
- "Defect Rates for Different Levels of Sigma (σ) Assuming a 1.5 Shift in Actual
  Mean from Design Mean."

The slide defines tolerance as the range within which all individual
measurements of units produced are desired to fall. Its source attribution is
Robert W. Hall, *Attaining Manufacturing Excellence: Just-in-Time Manufacturing,
Total Quality, Total People Involvement* (Homewood, IL: Dow Jones-Irwin, 1987),
p. 66. By permission of The McGraw-Hill Companies.

## Coverage limits stated in the slides

- Skip the Taguchi cost function.
- Problem solving is not required for the Taguchi cost function, capability
  index, or run tests.
