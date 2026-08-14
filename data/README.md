# data/

- `raw/` — held securely, not shared (see `raw/README.md`).
- `deidentified/` — shareable datasets produced by `code/deidentify_release.R`.
  All participant IDs are re-coded public IDs that cannot be linked to the
  identifiers used during data collection.
- `data_dictionary.xlsx` — variable definitions. Pair with every dataset.
- `checksums.md` — MD5 checksums for every released dataset.
