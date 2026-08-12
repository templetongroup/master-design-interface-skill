# System, craft, and accessibility

Use this reference when creating tokens, components, responsive behavior, native windows, or high-fidelity polish.

## Semantic system

Define tokens by role rather than appearance:

- canvas, surface, elevated surface, inset surface, border, divider;
- primary, secondary, tertiary, inverse, disabled text;
- accent, on-accent, focus, selection;
- success, warning, danger, info and their on-colors;
- spacing, radii, control heights, type, motion, and elevation.

Use one tuned neutral family. Pure black and white are acceptable only when the brand or contrast requirement calls for them; otherwise tune temperature deliberately. Verify every foreground/background pair as rendered, including disabled and selected states when they must remain readable.

## Layout and adaptation

- Group primarily with space, then surface, then separators.
- Keep intra-group gaps smaller than inter-group gaps; 1:2 is a useful starting ratio.
- Align content to shared edges and baselines. A stray edge reads as noise.
- Derive breakpoints from the content's failure point, not device folklore.
- Test smallest and largest supported sizes first, then the typical size.
- Let text containers grow. Avoid fixed heights around user-visible text.
- Put critical actions in stable, reachable flow or chrome; do not strand them below a clipped pane.
- Give hidden content a visible continuation cue.
- For localization and RTL, use logical geometry and stress strings beyond English length.
- Use vertical scrolling intentionally. Avoid nested scroll regions unless both axes and ownership are unmistakable.

For native desktop windows, define minimum, ideal, maximum if necessary, resize increments if meaningful, restoration behavior, toolbar/titlebar policy, and per-route content adaptation. Verify transitions between routes with different ideal sizes without forcing the user's window to jump unexpectedly.

## Typography

Use a small role-based scale. Prefer weight, spacing, and color before adding another size. Typical body leading is 1.4–1.6; display leading is tighter. Keep long-form measure roughly 45–75 characters unless the content is code, data, or a dense professional table.

Do not treat tiny, faint uppercase text as automatically sophisticated. Text below the platform's comfortable interface size needs a strong reason and measured contrast. Use tabular figures for aligned numeric data. Balance headings and prevent isolated final words where the platform supports it.

Use no more font families than the product can maintain. Platform fonts are often correct for native controls; distinctiveness can come from display roles, composition, imagery, and material instead of replacing every native label.

## Control geometry

Create a control matrix for every family:

| Property | Verify |
| --- | --- |
| Height | Shared by peer controls and sufficient for input method |
| Width | Equal for equal-rank peers; content-driven only by deliberate rule |
| Padding | Consistent horizontal and vertical insets |
| Baseline | Labels align optically across variants |
| Radius/border | Same family and state logic |
| Icon | Same optical box, stroke/fill family, and label gap |
| State | Default, hover, focus, active, selected, disabled, loading, success, error |
| Hit area | At least 24×24 CSS px; aim for 44×44 touch and 40×40 desktop when density permits |

Do not stretch text labels to achieve symmetry if the controls are not peers. Do not allow intrinsic-content sizing to create visibly accidental action rows. Check real labels, including the longest localized label.

## Surfaces, depth, and imagery

Choose one elevation language:

- spacing and tone for flat hierarchy;
- hairline borders for structure;
- low, consistent shadows for truly floating elements.

Do not stack border, heavy shadow, gradient, glare, texture, and background shift on every card. Lighting direction and material response must remain consistent. Texture should survive a subtraction test: remove it, and if nothing meaningful is lost, leave it out.

Use imagery to show the product, person, place, process, or brand idea—not to fill a vacant rectangle. Verify crop, focal point, aspect ratio, high-density rendering, dark/light backgrounds, and informative alt text. Hide decorative images from assistive technology.

Use one icon family or a deliberately coordinated set. Match visual weight to adjacent type, normalize optical boxes, and never rely on an icon alone when the action is unfamiliar.

## Motion

Motion must explain state change, provide feedback, or preserve spatial continuity. Typical interface transitions are 120–250 ms. Animate transform and opacity where possible; avoid layout-property animation and `transition: all`. Make interactions interruptible. Avoid looping, bouncing, parallax, and autoplay unless the content requires them.

Honor reduced motion: remove parallax and autoplay, replace large movement with a subtle crossfade, and keep state understandable without animation.

## Accessibility floor

- Use native semantic controls first.
- Give every control a name, role, value, and state.
- Preserve a visible keyboard focus indicator against every adjacent surface.
- Provide complete keyboard behavior: Tab between widgets, arrows within composites, Enter/Space to activate, Escape to dismiss.
- Trap focus in modal contexts and restore it to the trigger.
- Never use color as the only state cue.
- Associate labels, descriptions, requirements, and errors programmatically.
- Announce dynamic status appropriately; urgent alerts and routine status are not the same.
- Ensure zoom/text resize reflows without clipping or horizontal scrolling.
- Respect platform target sizes and avoid overlapping expanded hit areas.

Test with the platform accessibility tree and at least keyboard-only traversal. Automated checks are supporting evidence, not proof of accessibility.

## Shared-primitive audit

After changing any token or shared control:

1. list every consumer;
2. inspect the most important, densest, longest-label, destructive, disabled, and narrow-size examples;
3. compare light/dark or other supported themes;
4. check baseline, size, focus, and state geometry side by side;
5. fix the primitive if the defect repeats; use a local exception only when semantics truly differ.

A polished component that destabilizes another screen is not a successful polish pass.
