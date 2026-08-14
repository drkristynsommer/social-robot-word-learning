# Novel Word Learning from Social Robots by Autistic and Non-Autistic Children

This repository contains the data, analysis code, materials, and outputs
supporting the study of novel word learning from socially contingent robots in
autistic and non-autistic children. The materials are provided to support
transparency and computational reproducibility of the analyses reported in the
manuscript.

## Overview

Children learned novel object labels from a video presentation that either did
or did not include a socially contingent robot. Word-learning accuracy was
measured with a 12-trial forced-choice test, and engagement was coded from
video across multiple behavioral channels. The autistic sample was
characterized using standardized diagnostic and developmental measures
(ADOS-2, MSEL, Vineland-3), which were used for sample description rather than
as eligibility criteria.

## Preregistration

The study was preregistered on the Open Science Framework prior to data
collection: https://osf.io/hg859/. Departures from the preregistered protocol
are documented in `preregistration/deviation_log.md`.

## Repository structure

```
OSF_release/
├── README.md                 This file
├── LICENSE.md                Licensing terms for code and for data/materials
├── CITATION.cff              Citation metadata for this deposit
├── ai_use_statement.md       Generative-AI transparency note
├── computational_environment.md  R and package versions
├── preregistration/          Preregistration link and deviation log
├── materials/                Stimuli, robot script, coding manual, blank consent
├── data/
│   ├── raw/                  Held securely, not shared (see raw/README.md)
│   ├── deidentified/         Shareable datasets (produced by deidentify_release.R)
│   ├── checksums.md          MD5 checksums for the released datasets
│   └── data_dictionary.xlsx  Variable definitions
├── code/                     Analysis notebook, revision scripts, power analysis, de-id script
└── outputs/
    ├── figures/              Manuscript figures
    └── *.html                Knitted analysis notebook
```

## How to reproduce

The analysis was conducted in R 4.5.3. The primary artifact is
`code/Social_Robot_Word_Learning_Analysis.Rmd`, which knits to the HTML
notebook in `outputs/`. Revision analyses are reproduced by
`code/revision_recompute.R` and `code/revision_model_B.R`, and the power
analysis by `code/simr_power_robot_fixed.R`. Exact package versions are listed
in `computational_environment.md` and in Section 12 (Session Info) of the
rendered notebook.

**Participant identifiers.** All participant IDs in this deposit (datasets,
notebook output, and figures) are re-coded public IDs that cannot be linked to
the identifiers used during data collection. The re-coding is performed by
`code/deidentify_release.R`; the mapping is held securely by the authors and is
not deposited.

**What reproduces from the shared data.** The word-learning and engagement
analyses (notebook Sections 5–10) run from the de-identified datasets in
`data/deidentified/`. Two parts require the secure source files and therefore
do not re-run from the public deposit: the interrater-reliability computation
(Section 3.4, raw coding workbooks) and the covariate screening on exact age
and clinical scores (Section 7.1.5; the released main dataset carries banded
age and banded clinical scores instead). The full analysis trail for those
sections is visible in the rendered notebook.

## Data-access statement

The de-identified datasets required to reproduce the published analyses are
provided in `data/deidentified/`. The raw source data are not shared because
they contain individual-level clinical and developmental scores on a small
autistic sample, for which the combination of quasi-identifiers carries a real
re-identification risk. Requests for access to the underlying data may be
directed to the corresponding author and are subject to ethics approval and a
data-sharing agreement.

## Ethics

The study was approved by the relevant institutional human research ethics
committee. Approval reference numbers are reported in the manuscript.

## Use of generative AI

See `ai_use_statement.md` for the analysis-transparency note describing the use
of generative AI tools in the preparation of the code and manuscript. This note
matches the declaration in the manuscript.

## Citation

If you use these materials, please cite both the manuscript and the OSF
deposit (see `CITATION.cff`). The OSF DOI is listed in the manuscript's Data
and Code Availability statements once minted.

## Contact

Corresponding author: Dr Kristyn Sommer, School of Applied Psychology,
Griffith University (k.sommer@griffith.edu.au).
