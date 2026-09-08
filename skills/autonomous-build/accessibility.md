# Accessibility

Every visible slice must be operable without a mouse and perceivable without perfect vision.

- Keyboard: all actions reachable by Tab, operable with Enter/Space, visible focus indicator, sane tab order, no keyboard traps.
- Semantics: real buttons, inputs, and headings with accessible names. The accessibility tree must expose what the screenshot shows.
- Contrast: text meets WCAG AA against its background. Do not rely on color alone to convey state.
- Motion: honor reduced-motion preferences. No essential information carried by animation only.

Verify with tree inspection plus a keyboard-only walkthrough driven through the vision module. An accessibility failure blocks the slice like a test failure.
