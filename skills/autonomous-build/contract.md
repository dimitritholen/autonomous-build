# Contract

Kill ambiguity before code. Ask at most one round of clarifying questions, only about goal, users, constraints, and what done means, then take over. Allow a second round only when the answers invalidate the frozen contract.

Freeze an executable contract containing:

- Input/output schemas for every interface the slice touches.
- Constraints: runtime, latency, cost, resources.
- Failure modes and expected behavior for each.
- Pinned runtime, dependencies, APIs, and data sources.
- Domain invariants: state rules the business requires (e.g. totals must balance, drafts never visible to others).

Anything untestable by machine is out of scope. Record each exclusion in the contract itself so later turns do not re-litigate it.

Existing codebases: map the surrounding architecture before freezing the contract. Name the modules, patterns, and infrastructure the slice must reuse. New scaffolding that duplicates existing capability is a contract violation.
