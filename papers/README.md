# Papers

This folder contains the papers in both Markdown (easy to read/edit) and LaTeX (for submission-quality PDFs).

- Main paper: `papers/safety-theatre-agency.*`
- AI spin-off: `papers/ai-safety-first-governance.*`
- Shared bibliography: `papers/references.bib`

## Build

From the repo root:

- `powershell -ExecutionPolicy Bypass -File scripts/build.ps1 -Paper safety-theatre-agency`
- `powershell -ExecutionPolicy Bypass -File scripts/build.ps1 -Paper ai-safety-first-governance`

PDFs are written to `dist/`.

