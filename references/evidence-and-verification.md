# Evidence and verification

Use this reference whenever behavior, responsiveness, accessibility, installation, deployment, or release readiness matters.

## Proof ladder

Evidence is cumulative. Never claim a higher rung from a lower one.

1. **Source** — code, tokens, copy, assets, identifiers, and state wiring are present.
2. **Static validation** — compiler, linter, unit tests, snapshots, or deterministic scans pass.
3. **Rendered** — the intended surface appears in the real renderer at specified dimensions and themes.
4. **Interactive** — pointer, keyboard, focus, scrolling, resizing, interruption, error, and recovery paths work.
5. **Packaged/deployed** — the installed app or public URL contains the intended build.
6. **Update/distribution** — updater/feed/store/package path delivers the correct artifact.
7. **Real task** — a representative end-to-end job succeeds with real input and output.

A preview screenshot proves rung 3 for one state. A signed/notarized build proves distribution properties, not rung 4 or 7. A public release page proves availability, not installed behavior.

## Surface-by-state matrix

Create a concise matrix before claiming comprehensive coverage:

| Surface | Normal | Minimum/narrow | Large | Keyboard | Empty/loading/error | Theme | Real task |
| --- | --- | --- | --- | --- | --- | --- | --- |

Mark each cell Pass, Fail, Not present, or Not verified. Do not silently treat Not verified as Pass.

Prioritize the entry flow, primary job, settings/preferences, data/history, permissions, destructive actions, and shared overlays. Include menu-bar, tray, popover, or secondary windows when they are part of the product.

## Responsive and native-window verification

For web/mobile:

- test the smallest supported width, one content-driven breakpoint on each side, typical desktop, and a wide viewport;
- test 200% browser zoom and long localized strings;
- inspect horizontal overflow, sticky/fixed regions, safe areas, virtual keyboards, and orientation when relevant.

For desktop apps:

- test minimum, default/ideal, and large window sizes;
- resize continuously, not only by assigning final dimensions;
- navigate between every route at each size;
- inspect split views, sidebars, titlebars/toolbars, scroll ownership, restored size/position, full screen, and secondary windows;
- confirm primary controls remain reachable on first open without unexplained clipping;
- do not force a window to resize on navigation unless the platform and task require it.

## Interaction verification

Use physical or platform-level interaction against the actual product:

- tab/arrow traversal order and visible focus;
- pointer activation across the full intended hit target;
- Enter/Space, Escape, shortcuts, default/cancel actions;
- modal focus trap and restoration;
- selection, disabled, loading, progress, cancellation, success, error, and retry;
- repeated fast actions and interruption;
- close, reopen, restore, and update synchronization.

Inspect the accessibility tree for name, role, value, state, help, and meaningful reading order. Hide decorative assets. Test dynamic announcements with the target assistive technology when the behavior is release-critical.

## Visual comparison

Compare reference and implementation at matching dimensions and scale. Check in this order:

1. frame, columns, and major regions;
2. task hierarchy and focal path;
3. component sizes, alignment, and spacing;
4. typography roles and wrapping;
5. color, material, imagery, and icons;
6. states and motion.

Use overlays, pixel sampling, or measurements where available. Label inferred values. Do not declare fidelity from a casual side-by-side glance.

## Truth and release checks

Verify visible facts from live sources:

- version/build labels come from the running artifact;
- update availability matches the intended feed/channel;
- readiness and permissions are queried, not hard-coded;
- selected models/devices/accounts exist and are actually active;
- privacy claims match data flow and storage;
- personal greetings or tenant names come from real profile context with neutral fallback;
- public archive/deployment matches the locally approved artifact.

For release work, report separately:

- source revision and clean/dirty state;
- build version and identifier;
- signing/notarization/store status when relevant;
- artifact checksum or deployment identifier;
- installed/deployed version;
- updater/distribution result;
- interaction matrix and real-task result;
- exact remaining gaps.

Publication is a distinct external action. Perform it only when the user explicitly asks.

## Before/after discipline

When implementing:

1. capture baseline evidence before editing;
2. apply the smallest coherent system change;
3. rerun static checks;
4. capture the same surfaces at the same sizes;
5. exercise the same interactions;
6. inspect shared-component consumers and unrelated critical flows for regression;
7. keep the worktree and external environment status explicit.

Do not select only flattering after-states. Include the smallest supported size and at least one unhappy path.
