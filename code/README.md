# code/

Analysis code (version-controlled on GitHub, archived to OSF for a DOI).

Contents:

- `Social_Robot_Word_Learning_Analysis.Rmd` — main analysis notebook (primary reproducibility artifact). Includes a plain-language summary paragraph after each main result (RQ1–RQ4 and the exploratory group × Touch interaction).
- `revision_recompute.R`, `revision_model_B.R` — revision re-analysis scripts.
- `simr_power_robot_fixed.R` — power analysis.
- `deidentify_release.R` — produces the de-identified datasets from the secure source files. Run locally before any data deposit.

Excluded by design: `Untitled.Rmd`, `*.bak_before_reorder`, `_inject_ggsave.py`,
`_reorder_rmd.py`, and `.Rhistory` files — scratch/working artifacts.
