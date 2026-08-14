# Preregistration deviation log

This log records departures from the preregistered protocol, with the reason for
each. It corresponds to the deviation log referenced in the manuscript and
matches the log in the analysis notebook
(`code/Social_Robot_Word_Learning_Analysis.Rmd`, Preamble).

**Preregistration:** https://osf.io/hg859/

| # | Section | Deviation | Type | Rationale |
|---|---|---|---|---|
| 1 | RQ3 | Engagement channels analysed as independent subscales rather than a single composite score | Protocol-driven | Factor analysis revealed non-equivalent structures in Autistic vs Non-autistic groups; composite scores would conflate structurally distinct constructs |
| 2 | RQ1 | Covariate-adjusted model run only if covariates pass pre-analysis Pearson screening (*p* < .05) | Pre-specified | Prevents overfitting in small Autistic subsample; screening criterion documented prior to model fitting |
| 3 | RQ3 | Story engagement model restricted to Autistic females only | Protocol-driven | Coding file for Autistic males uses different layout; story columns unavailable for male participants |
| 4 | RQ3/RQ4 | Touch analysis restricted to Touch-valid subset (n = 66 / n = 31 Autistic) | Protocol-driven | 21 children were instructed not to touch; global session cutpoint applied to all channels at touch-instruction interval |
| 5 | General | Goodbye phase excluded from all engagement analyses | Pre-specified | Substantially higher missingness and structural difference from learning-relevant phases (Intro Play, Q&A) |
| 6 | Bayesian | Full posterior inference (brms/Stan) not obtained; BayesFactor sensitivity analyses reported instead | Protocol-driven | macOS SDK incompatibility with rstan/brms at time of analysis |

## Notes

- Preregistered confirmatory analyses (RQ1–RQ4) are distinguished from
  exploratory analyses (group × engagement interactions; factor structure of
  engagement measures) throughout the notebook and manuscript.
- Keep this log consistent with the wording in the manuscript so that the two do
  not diverge.
