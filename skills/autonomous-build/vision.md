# Vision layer

Use for GUI products (desktop, web, mobile) when API/DOM probes cannot verify behavior. Each visual probe declares start state, action sequence, expected end state, timeout, resolution, and scaling. Anything without a stable visual anchor is out of scope.

Probe capabilities before the first visual probe: confirm screenshot capture, accessibility-tree access, and an input driver exist in this environment. If any piece is missing, skip visual probes, verify through API/DOM signals only, and record the limitation in the contract.

Loop Observe-Ground-Act-Assert, one action per turn:

- **Observe.** Capture screenshot plus accessibility tree (AT-SPI on Linux, UI Automation on Windows, AX on macOS). The tree is ground truth for roles and labels. The screenshot is perception.
- **Ground.** Resolve intent (e.g. "Save button") to coordinates via tree lookup first. Use vision grounding only for custom canvas rendering. Record coordinates and scaling factor.
- **Act.** Execute a single input primitive (click, double-click, drag/swipe, scroll, type) via OS driver (`xdotool`/`wtype`, `cliclick`, `pyautogui`) or Playwright/Appium for web/mobile. No batch macros.
- **Assert.** Re-capture screenshot and tree plus app logs. Treat mismatch as execution signal: revert failed patch, tighten crop or selector, retry small.

Pin OS, display server, resolution, and scaling in the contract.
