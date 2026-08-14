# Computational environment

The analyses were conducted in **R 4.5.3 (2026-03-11)** on macOS
(aarch64-apple-darwin20). The complete `sessionInfo()` output, including all
packages loaded via a namespace, is printed in Section 12 of the rendered
analysis notebook (`outputs/Social_Robot_Word_Learning_Analysis.html`).

## Principal packages

| Package     | Role                                            | Version    |
|-------------|-------------------------------------------------|------------|
| lme4        | Frequentist mixed-effects models (GLMM/LMM)     | 1.1-38     |
| lmerTest    | Satterthwaite tests for LMMs                    | 3.1-3      |
| BayesFactor | Bayesian t-tests and correlations (sensitivity) | 0.9.12-4.8 |
| psych       | Factor analysis, descriptives                   | 2.5.6      |
| irr         | Intraclass correlation (interrater reliability) | 0.84.1     |
| tidyverse   | Data wrangling and plotting                     | 2.0.0      |
| ggplot2     | Figures                                         | 4.0.2      |
| dplyr       | Data wrangling                                  | 1.2.0      |
| readxl      | Reading the source Excel workbooks              | 1.4.5      |
| janitor     | Column-name cleaning                            | 2.2.1      |
| ggdist / ggbeeswarm | Distribution and beeswarm layers        | 3.3.3 / 0.7.3 |
| kableExtra  | Table rendering                                 | 1.4.0      |
| zoo         | Interval-series utilities                       | 1.8-14     |
| here        | Project-relative paths                          | 1.0.2      |

The power analysis (`code/simr_power_robot_fixed.R`) additionally uses the
`simr` package.

## Random seeds

Fixed random seeds are set where simulation is involved (the `simr` power
analysis) so results are reproducible. The frequentist and BayesFactor analyses
in the notebook are deterministic given the data and package versions above
(BayesFactor sampling-based quantities are reported with their default
settings; any Monte Carlo variation is within the reported precision).
