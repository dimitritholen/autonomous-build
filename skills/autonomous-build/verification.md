# Verification

Tests are the specification. Code stays disposable.

Write verification before implementation for each slice:

- Acceptance probes that run against the real runtime.
- Property tests and invariants from the contract.
- Edge cases: empty, oversized, malformed, concurrent, and interrupted inputs.

Generate in parallel, select by execution. Produce two or three candidates per slice on forced distinct axes (simplest possible, most robust, most unconventional). Near-identical drafts are wasted tokens. Run tests, fuzz inputs, check load behavior. Keep the winner and delete the rest.

Repair by execution signal. Loop generate, execute, repair. Use real runtime output, logs, and failing tests as the only correctness signal. Revert failed patches. Keep iterations small: after three failed repairs on the same slice, stop and escalate to the user with the failing signal, what was tried, and concrete options. Never spiral silently.
