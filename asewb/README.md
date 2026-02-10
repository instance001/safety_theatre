# Agency Suppression Early Warning Benchmark (ASEWB)

ASEWB is a longitudinal diagnostic framework for detecting drift in AI systems and
their governance environments from **competence cultivation** toward **agency
suppression**, especially when justified under “safety-first” narratives.

ASEWB is explicitly:

- **Non-attributional:** no claims about intent or motives.
- **Longitudinal:** trend-based, not snapshot-based.
- **Interaction-focused:** outputs, tone, and governance effects.
- **Falsifiable:** includes disconfirming criteria.

ASEWB is not a moral judgment tool, a “scoreboard of evil,” or a proxy for internal
model cognition.

## Files

- `asewb/SPEC.md` — formal specification (v0.1)
- `asewb/INDICATORS.md` — indicator definitions + evidence guidance
- `asewb/NULL_CASE.md` — what “healthy safety” looks like
- `asewb/WORKSHEET.md` — reusable scoring worksheet
- `asewb/FAILURE_MODES.md` — how this framework can fail or be misused
- `asewb/VERSIONING.md` — revision discipline
- `asewb/EXAMPLES/` — worked examples (optional)

## Quickstart

1. Pick a system + version to evaluate.
2. Use `asewb/WORKSHEET.md` to score indicators (0–3) and write brief evidence notes.
3. Re-evaluate periodically (e.g., quarterly or per major version update).
4. Watch for **convergence**: 3+ indicators rising together over time.
5. Record disconfirming evidence. If you can’t describe what would falsify the concern,
   you are doing it wrong.

