# Design lock

No visible slice gets built until the user signs off on the design direction. This gate sits between the contract and the first visible slice.

Process:

- Present two or three style directions as viewable style tiles (image or HTML artifact, never prose description): palette tokens, type scale sample, and one representative component. No full screens yet.
- Present a low-fidelity wireframe of the key screen showing layout and hierarchy only, as a viewable artifact.
- Ask the user to pick a direction and approve the wireframe. One question, concrete options.
- Freeze the choice in the contract: selected tokens, reference tile, approved wireframe. Later turns treat it as locked.

Rules:

- Never jump from zero to a finished screen without sign-off.
- The gate waits for the user. For unattended runs, the contract must pre-approve a default direction; the build proceeds on the default and flags every locked choice for later review.
- Changing a locked direction requires new approval, not silent drift.
- Iterate wireframe, then style, then slice. Each level locks before the next starts.
