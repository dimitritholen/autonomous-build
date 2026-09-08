# Maintainability

Build the thinnest runnable slice: one end-to-end path that runs in production. No layers, scaffolding, or future-proofing. Expand only after the slice passes.

Integrate on mainline. Land small independently verified commits. Merge trivial conflicts by hand. Regenerate the slice only when the conflict signals a design clash rather than overlapping edits. Never regenerate outside the slice boundary: surrounding code is read-only unless the contract names it.

Ship with self-observation. Add telemetry, production assertions, and auto-rollback on regression. Deployment is part of the build, not a separate phase. Telemetry never carries secrets, credentials, or personal data. Treat a PII leak into logs as a security failure that blocks the slice.

Optimize for verification density per token, not deliberation. Prefer search and execution filtering over single-path careful writing. Delete losing drafts without hesitation. Store only machine-useful memory: decisions, invariants, and failed approaches. Keep a short decisions log with each slice recording every choice plus its reason.
