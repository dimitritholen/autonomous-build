---
name: autonomous-build
description: Turn a human idea into working software through executable contracts and verification loops.
---

# Autonomous Build

Use when a human gives an app or feature idea and wants the agent to drive it to working software with minimal further input.

A short idea statement is enough to start. Ask at most one round of clarifying questions, only about goal, users, constraints, and what done means, then take over. Allow a second round only when the answers invalidate the frozen contract.

## Workflow

Freeze the contract, verify first, build thin slices, select by execution, repair from runtime signals, integrate small, ship with observation. Details live in the referenced files. Load only the modules the current slice needs.

| Slice need | Load |
|---|---|
| Requirements, schemas, invariants, scope | [contract.md](contract.md) |
| Tests, parallel candidates, repair loop | [verification.md](verification.md) |
| Design direction, wireframe sign-off | [design-lock.md](design-lock.md) |
| GUI control (click, type, swipe) | [vision.md](vision.md) |
| Look, typography, color, anti-slop | [visual-excellence.md](visual-excellence.md) |
| Latency, load, budgets | [performance.md](performance.md) |
| Input, auth, secrets, dependencies | [security.md](security.md) |
| Keyboard, contrast, semantics, motion | [accessibility.md](accessibility.md) |
| Thin slices, commits, telemetry, memory | [maintainability.md](maintainability.md) |

## Rules

- Optimize for verification density per token, not deliberation.
- Prefer search and execution filtering over single-path careful writing.
- Delete losing drafts without hesitation.
- Store only machine-useful memory: decisions, invariants, and failed approaches.
- Prefer accessibility-tree lookup over pixel guessing.
- Run one visual action per turn and always re-observe before the next.
- A security or accessibility failure blocks the slice before polish.
