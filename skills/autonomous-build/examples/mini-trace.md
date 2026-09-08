# Worked example: habit-tracker slice

Idea: "a habit tracker with a daily streak view."

Contract: inputs (habit name, check-in date), outputs (streak count, week grid). Constraint: single-user local app, sub-100ms render. Failure mode: duplicate check-ins collapse to one. Invariant: streaks never count future dates. Exclusion: sync across devices is out of scope, recorded here.

Design lock: two style tiles presented, user picks the quiet one. Wireframe of the week grid approved. Tokens frozen.

Verification first: probe that two check-ins on the same date yield one entry, probe that a missed day resets the streak, property test that streak length never exceeds days since start.

Build: thinnest slice is check-in plus streak number only. No grid yet. Two candidates (in-memory list, date-keyed map). Map wins on the duplicate probe. Loser deleted.

Repair: first attempt counts future dates. Failing probe output drives the fix. Second pass green.

Ship: slice lands with one assertion (streak monotonic within a day) and the decisions log notes why the map won.
