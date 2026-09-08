# Performance

Budgets are part of the contract. Every slice states latency, throughput, and resource ceilings before implementation.

Gate each slice: measure against the budget on the real runtime, profile the hot path, test with oversized and concurrent inputs. A slice that misses budget fails like a test failure: shrink scope, change approach, or regenerate. Never accept "fast enough on my machine" without a number.

Record load behavior for the winner of each parallel generation round so regressions show up in telemetry later.
