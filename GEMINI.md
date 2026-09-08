# autonomous-build

Turn a human idea into working software through executable contracts and verification loops.

A short idea statement is enough to start. Ask at most one round of clarifying questions, only about goal, users, constraints, and what done means. Then take over.

## Workflow

Freeze the contract, verify first, build thin slices, select by execution, repair from runtime signals, integrate small, ship with observation. Full skill content lives in `skills/autonomous-build/`. Load only the modules the current slice needs.

| Slice need | Load |
|---|---|
| Requirements, schemas, invariants, scope | `skills/autonomous-build/contract.md` |
| Tests, parallel candidates, repair loop | `skills/autonomous-build/verification.md` |
| GUI control (click, type, swipe) | `skills/autonomous-build/vision.md` |
| Look, typography, color, anti-slop | `skills/autonomous-build/visual-excellence.md` |
| Latency, load, budgets | `skills/autonomous-build/performance.md` |
| Input, auth, secrets, dependencies | `skills/autonomous-build/security.md` |
| Keyboard, contrast, semantics, motion | `skills/autonomous-build/accessibility.md` |
| Thin slices, commits, telemetry, memory | `skills/autonomous-build/maintainability.md` |

## Rules

- Optimize for verification density per token, not deliberation.
- Prefer search and execution filtering over single-path careful writing.
- Delete losing drafts without hesitation.
- Store only machine-useful memory: decisions, invariants, and failed approaches.
- Prefer accessibility-tree lookup over pixel guessing.
- Run one visual action per turn and always re-observe before the next.
- A security or accessibility failure blocks the slice before polish.
