# Contract

Kill ambiguity before code. Ask at most one round of clarifying questions, only about goal, users, constraints, and what done means. Then take over.

Freeze an executable contract containing:

- Input/output schemas for every interface the slice touches.
- Constraints: runtime, latency, cost, resources.
- Failure modes and expected behavior for each.
- Pinned runtime, dependencies, APIs, and data sources.
- Domain invariants: state rules the business requires (e.g. totals must balance, drafts never visible to others).

Anything untestable by machine is out of scope. Record the exclusion explicitly so later turns do not re-litigate it.
