# data/deidentified/ — shareable datasets

De-identified, analysis-ready data with low re-identification risk, produced by
`code/deidentify_release.R` from the secure source files. Every file uses a
re-coded public participant ID (`pid`) that cannot be linked to the identifiers
used during data collection; the mapping is held securely by the authors and is
not deposited. Pair each file with the data dictionary in the parent `data/`
folder. MD5 checksums are in `data/checksums.md`.

## Primary datasets

- `analysis_main_deidentified.csv` — per-child main analysis file: word-learning
  trial outcomes and totals, engagement summaries, group, banded age, and banded
  ADOS-2 / Vineland-3 / DQ scores (exact ages, genders, and exact clinical
  scores are withheld).
- `test_trials_long.csv` — trial-level word-learning outcomes (pid, item, correct).
- `engagement_cleaned_intervals.csv` — interval-level engagement after cleaning
  (pid, group, phase, interval, five channels).
- `engagement_overall_means.csv`, `engagement_phase_means.csv` — per-child
  engagement means (overall and by phase).
- `analysis_interval_long.csv`, `analysis_cell_long.csv` — long-format
  engagement (demographic and clinical columns removed).

## Inclusion/exclusion transparency

- `inclusion_decisions_final.csv`, `inclusion_decisions_final_summary.csv`,
  `inclusion_decisions_robot_word_learning.csv`, `inclusion_decisions_summary.csv`
- `group_attrition_summary.csv`, `master_flags_by_pid.csv`
- `engagement_exclusion_flags_by_PID.csv`,
  `engagement_exclusions_by_pid_and_why_COMBINED_50pctMinRule.csv`,
  `engagement_exclusions_summary_by_pid.csv`
- `practice_exclusions_by_pid.csv`, `practice_test_exclusions_by_pid_and_why.csv`,
  `practice_test_exclusions_detailed.csv`, `test_exclusions_by_pid.csv`

## Supplementary outputs

- `story_engagement_correlations_6plus.csv`, `story_engagement_lm_ASD_6plus.csv`
  — story-engagement supplementary analysis outputs.

No file in this folder contains names, dates, exact age, gender, service
identifiers, or exact clinical scores.
