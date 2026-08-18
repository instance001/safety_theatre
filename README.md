# Safety Theatre and the Suppression of Agency

This repository contains a preprint-length philosophy paper (plus companion materials) arguing that a growing class of “safety” mechanisms function less as harm-reduction tools and more as control mechanisms that constrain discretionary judgment and deskill actors.

Author: **Anthony Paterson** (Fractal Media Infrastructure (FMI))

Philpapers mirror: https://philpapers.org/rec/PATSTA-5

## What’s here

- Main paper (academic preprint)
  - `papers/safety-theatre-agency.md`
  - `papers/safety-theatre-agency.tex`
- AI spin-off paper (application of the framework)
  - `papers/ai-safety-first-governance.md`
  - `papers/ai-safety-first-governance.tex`
- Newer paired incident-report set on AI-assisted technical review
  - `papers/claim-action-divergence.md`
  - `papers/claim-action-divergence-addendum-2.md`
  - `docs/claim-action-divergence-plain-language.md`
  - `docs/claim-action-divergence-second-receipts.md`
  - `docs/claim-action-divergence-addendum-2-original-draft.md`
- References (shared)
  - `papers/references.bib`
- Submission + PhilArchive/PhilPapers packaging notes
  - `docs/submission.md`
- PhilArchive copy/paste metadata
  - `metadata/philarchive.md`
- Companion benchmark framework (optional)
  - `asewb/` (Agency Suppression Early Warning Benchmark)

## License

Unless otherwise noted, this repository is licensed under AGPL-3.0-only (see `LICENSE`).

## Build PDFs

Prebuilt PDFs are available in `dist/`.

If you have a LaTeX distribution installed (MiKTeX or TeX Live), build via:

- `powershell -ExecutionPolicy Bypass -File scripts/build.ps1 -Paper safety-theatre-agency`
- `powershell -ExecutionPolicy Bypass -File scripts/build.ps1 -Paper ai-safety-first-governance`

Outputs go to `dist/`.
