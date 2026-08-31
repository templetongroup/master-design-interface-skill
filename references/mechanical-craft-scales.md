# Mechanical craft scales and diagnosis

Use this reference when a product has no coherent token system, repeated values are visibly arbitrary, or the brief is a vague mechanical-polish request such as “make this look better,” “less amateur,” “less cluttered,” or “more finished.”

This is a fallback and repair kit, not a replacement for a sound existing design system. Preserve established tokens when they are coherent, accessible, and fit the product. Never force these defaults over platform conventions, an approved brand system, or measured acceptance targets.

## Start with decisions, not decoration

1. Pick one real feature or task. Let the shell follow the product instead of choosing navigation before the content is understood.
2. Establish structure and hierarchy in grayscale before relying on accent color, imagery, texture, or shadow.
3. Design the smallest useful version. Do not imply controls or states that the implementation cannot support.
4. Start at a constrained width where grouping and priority decisions are unavoidable, then expand deliberately.
5. Work in short design → implementation → rendered-check cycles. Low-fidelity artifacts are disposable decision tools, not deliverables by default.
6. When a value is uncertain, compare the candidate with the adjacent step on each side. Choose by elimination instead of inventing a new value between them.
7. Begin with generous space, then remove it until the hierarchy is compact enough. Dense products are valid, but density must be intentional.

## Default scales when the project has none

Use a small named set. The exact numbers may be retuned once, but consumers must use the shared tokens afterward.

### Space and size

```text
4  8  12  16  24  32  48  64  96  128  192  256
```

The scale is tighter for controls and spreads out for composition. Avoid a giant linear scale that makes adjacent choices indistinguishable. Add a value only when a real recurring requirement cannot be represented by the current set.

### Interface type

```text
12  14  16  18  20  24  30  36  48  60  72
```

- On the web, express type tokens in `rem` or `px` so nesting does not silently create off-scale values. Relative units remain correct for text measure and other intentionally contextual dimensions. On native platforms, use the platform's semantic, user-scalable text styles and units—for example Dynamic Type-backed points on Apple platforms or `sp` on Android—instead of importing web units.
- Use roughly two emphasis bands: `400–500` for normal content and `600–700` for emphasis. De-emphasize with color, position, and role before reaching for very light weights.
- Keep prose around 45–75 characters per line. Use tighter leading for display text and more leading for small text or wide measures.

### Opacity, radius, and elevation

- Define a short opacity set such as `.05, .1, .2, .4, .6, .8` instead of eyeballing each state.
- Choose a coherent radius family tied to role and tone. Do not mix square, softly rounded, and pill geometry arbitrarily.
- Use a small elevation ladder—usually 3–5 levels—mapped to semantic z-position. Buttons, menus, popovers, and modals should not each invent a shadow.
- Flat products may use tone, border, and overlap instead of shadow. Do not stack every depth cue on the same surface.

## Hierarchy mechanics

Give every visible element a rank: primary, secondary, or tertiary.

- Use weight and foreground color before making the primary content huge or the secondary content tiny.
- If the important element still does not stand out, reduce competition around it rather than decorating it further.
- Style actions by task rank. A destructive action is not automatically the largest red button; it becomes primary only where deletion is the confirmed task.
- Prefer one primary action in a decision area unless the workflow truly has equal-ranked branches.
- Remove labels that format or context already supplies. Where scanning depends on labels, make that relationship explicit and consistent.
- Balance visual weight against contrast: a heavy icon often needs a softer color; a soft functional border may need more thickness rather than a darker color.
- Semantic document hierarchy and visual hierarchy are related but not identical. Keep correct heading structure even when a section title is visually quiet.

## Grouping and responsive geometry

- Keep more space around a group than within it. Equal internal and external gaps create ownership ambiguity.
- Size sidebars, forms, cards, and controls to their content. Do not use percentage width for an element that should stay near a fixed optimum.
- Use max-width and reflow. Do not proportionally shrink every desktop value at a breakpoint; large elements usually need to contract faster than body text and controls.
- Align mixed text sizes on their baselines, not only their bounding-box centers.
- Do not scale icons far beyond the size for which they were drawn. Place a correctly sized icon inside a larger shape when the composition needs more presence.
- Constrain user-provided images with intentional aspect ratios and crops, and verify extreme content rather than assuming the asset will cooperate.

## Color-ramp mechanics

If the project has no palette system:

1. Define 8–10 useful neutral steps because most interface text, surfaces, and borders are neutral.
2. For a primary or heavily used accent, define enough steps to cover tinted backgrounds, default actions, hover/active states, borders, and dark text—often 5–10.
3. Choose the functional base first, then the light and dark endpoints in real components, then fill the intermediate steps.
4. Use semantic roles such as `surface`, `surface-raised`, `text-primary`, `text-secondary`, `border-functional`, `action`, and `on-action` in components. Raw ramps are implementation inputs, not component APIs.
5. Do not generate production shades ad hoc with runtime `lighten()` or `darken()`. Tune and verify the actual role pairs.
6. Use HSL, OKLCH, or the project’s established color representation—whichever makes relationships reviewable and preserves the system. The durable rule is an explicit, inspectable ramp, not loyalty to one syntax.

Contrast and state rules:

- Normal text needs at least 4.5:1 unless it meets the actual large-text threshold; functional non-text boundaries need 3:1 when they are the only visible cue.
- Do not use low-contrast gray text on a saturated surface. Derive a compatible foreground from that color family and verify it.
- For quiet status treatments, dark semantic text on a pale semantic tint is often clearer than white text on a loud medium fill.
- Never use hue alone to distinguish meaning. Add text, icon, shape, pattern, position, or lightness contrast.
- Dark mode is not a mechanical ramp inversion. Raised dark surfaces often become slightly lighter, shadows contribute less, and every role pair must be rechecked.

## Depth and light

Choose one lighting direction and one material language.

- A raised object may combine a subtle lit edge with a cast shadow; an inset object reverses the cue. Keep both restrained and matched to the actual surface.
- When shadows are a visible part of the design, use two layers with different jobs: a broad cast shadow and a tighter contact shadow. As elevation increases, the tight contact shadow should weaken rather than grow into a dark halo.
- Use overlap sparingly as a strong depth cue. A background-colored separator can keep overlapping images legible without adding a conspicuous border.
- In dark themes, rely more on surface lightness and functional borders; do not expect a heavier black shadow to solve every layer.

## Mechanical diagnosis order

Work from the top of this table downward. Earlier defects usually create more perceived damage.

| Symptom | Likely root cause | First repair |
| --- | --- | --- |
| Nothing draws the eye | Equal visual rank | De-emphasize secondary and tertiary content |
| Cramped or claustrophobic | Space accumulated from a minimum | Reset generously, then trim using the scale |
| Labels and fields feel disconnected | Equal within-group and between-group gaps | Increase the outer group gap |
| Busy or boxed in | Borders doing all grouping work | Prefer space, tone, or one restrained separator |
| Primary is huge and secondary is tiny | Size carries all hierarchy | Move emphasis to weight and color |
| Page title dominates the task | Document heading styling applied mechanically | Keep semantics; reduce visual treatment |
| Data looks like a database dump | Every value has a redundant label | Remove implied labels or make necessary labels secondary |
| Icon overwhelms its label | Mismatched optical weight | Reduce icon contrast or choose a lighter icon |
| A thin border is either invisible or harsh | Weight and color are being conflated | Keep the softer color and increase thickness when appropriate |
| Layout sprawls on wide screens | Available width treated as a mandate | Constrain measure or add a purposeful supporting column |
| Mobile typography is enormous | Desktop values scaled proportionally | Define breakpoint-specific roles and shrink display sizes faster |
| Mixed-size inline text looks subtly wrong | Center alignment | Align to the text baseline |
| Flat or unfinished | Browser defaults or no accents | Fix hierarchy and states first, then add one justified accent or material cue |
| New-user screen is empty and inert | Empty state treated as absence | Explain the state and expose the first useful action |
| Component feels generic | Unquestioned default component shape | Recompose around the actual content and decision |
| Images damage the grid | Intrinsic asset geometry controls layout | Use fixed containers, crop rules, focal points, and edge-case assets |

## Completion checks

- Every repeated spacing, type, radius, opacity, color, and shadow value maps to a token or a documented exception.
- Primary, secondary, and tertiary hierarchy remains legible in grayscale.
- Group ownership is visible from spacing alone.
- Action styling follows task rank, including destructive actions.
- Layout uses content-sized constraints instead of arbitrary proportional scaling.
- All foreground/surface and functional-boundary contrast pairs are measured.
- Dark mode, responsive states, extreme content, and actual rendered output were inspected.

## Provenance and adaptation

Selectively adapted from [`s0xDk/refactoring-ui-skill`](https://github.com/s0xDk/refactoring-ui-skill), inspected at commit `48872143abb0a8feb6d9bf58e222afbd800210b0`, MIT licensed. The upstream skill translates concepts from *Refactoring UI* by Adam Wathan and Steve Schoger; this synthesis does not include the book itself.

Master Design resolves several upstream absolutes into context-aware defaults: existing fit-for-purpose systems win over fallback scales; modern perceptual color spaces are allowed alongside HSL; relative units remain valid where contextual scaling is intentional; and aesthetic techniques never override accessibility, platform behavior, or a measured acceptance target.
