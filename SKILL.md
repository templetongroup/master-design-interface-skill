---
name: master-design
description: Design, redesign, build, audit, polish, and production-verify exceptional interfaces across web, mobile, and native apps. Use for product framing, visual direction, UX flows, design systems, implementation, accessibility, responsive and window behavior, AI interactions, screenshot or reference reconstruction, whole-product reviews, pre-launch polish, and installed or deployed interface QA. Triggers on master design, design this, redesign this app, make this production ready, review every screen, polish the UI, improve the UX, match this reference, design system, visual audit, interface audit, accessibility review, responsive review, pre-launch design check, and ship-quality UI.
---

# Master Design

Create interfaces that are coherent, specific, usable, accessible, technically sound, and proven in the product people actually use. Treat visual quality and behavioral quality as one discipline.

This skill synthesizes a broad interface-design library without disabling or replacing the source skills. Read [source-map.md](references/source-map.md) only when auditing this synthesis, updating the master skill, or explaining its provenance.

## Non-negotiable hierarchy

Resolve conflicts in this order:

1. Follow the user's explicit brief, constraints, and approved acceptance target.
2. Protect accessibility, truthfulness, safety, privacy, and user data.
3. Follow the platform's interaction conventions and native semantics.
4. Preserve the project's established design system, stack, brand, and density when they remain fit for purpose.
5. Make task hierarchy, real content, and product state legible.
6. Apply stylistic taste and novelty.

Never let a style heuristic overrule a higher item. A brutalist, minimal, editorial, playful, luxury, or hardware direction is a route, not a universal rule.

## Choose the operating mode

Infer one mode from the request and state it briefly when useful.

| Mode | Use when | Default action |
| --- | --- | --- |
| `frame` | The problem, audience, or feature is unclear | Clarify the job, risk, evidence, and success condition before drawing UI |
| `direct` | A new visual direction or system is needed | Produce 2–3 coherent directions, recommend one, and wait if the choice materially changes the result |
| `build` | The user asks to create or change the product | Implement the smallest complete system in the existing stack and verify it |
| `review` | The user asks to inspect, critique, or audit | Stay read-only; return evidence-backed findings and a verdict |
| `polish` | A working interface needs launch-quality refinement | Fix shared primitives and high-leverage inconsistencies, then recheck all consumers |
| `ship` | The user asks for production readiness or publication | Run the full product and release evidence gates; publish only when explicitly authorized |

If the request combines modes, use this order: `frame → direct → build → polish → ship`. For an existing approved direction, skip `direct`. For a review-only request, do not mutate source or external state.

## 1. Establish the truth before designing

1. Read repository and platform guidance completely: `AGENTS.md`, `CLAUDE.md`, `CONTRIBUTING.md`, design-system docs, ADRs, token files, Storybook, and release instructions.
2. Inventory the actual stack, components, tokens, fonts, icons, assets, supported sizes, localization, themes, and preview/test commands.
3. Inventory the product surfaces and states: entry points, windows/routes, subnavigation, overlays, menus, loading, empty, error, disabled, selected, success, destructive, narrow, large, zoomed, and restored states.
4. Determine whether each supplied image is an **acceptance target**, **brand source**, **content source**, or **inspiration only**. If ambiguity would materially change the work, ask once. Do not blend conflicting references silently.
5. Use real product content and state. Find hard-coded personal names, demo data, stale version text, fake readiness, placeholders, and copy that claims more than the implementation proves.

For existing products, preserve the architecture and interaction model unless the user explicitly authorizes a rewrite. Redesign the system, not just the most visible screenshot.

Read [product-and-flow.md](references/product-and-flow.md) for product framing, cognitive load, AI behavior, trust, copy, and failure recovery.

## 2. Form a coherent direction

Define one sentence for each:

- **Audience**: who uses this and what they already understand.
- **Job**: the single primary outcome of the surface or flow.
- **Tone**: a specific character such as restrained technical, warm editorial, precise utilitarian, refined hardware, or expressive cultural. Never use “clean and modern” as the whole direction.
- **Hierarchy**: what earns first, second, and third attention.
- **Signature**: one or two memorable moves that belong to this product.

When direction is genuinely open, show 2–3 distinct systems, not color variations. For each, specify structure, typography, palette/material, interaction character, strengths, risks, and fit. Recommend one based on the audience and job.

When an acceptance target exists, measure it. Reconstruct its structure, proportions, alignment, typography roles, density, and component geometry before adding decoration. Preserve its design DNA without copying unrelated content or accidental defects.

Read [style-routing.md](references/style-routing.md) for selecting and reconciling aesthetics, brand, anti-slop rules, and reference-based work.

## 3. Build the design system before the pages

Define or normalize these shared primitives before leaf-screen polish:

- semantic color roles and contrast pairs;
- typography roles, line heights, measures, and numeric styles;
- spacing scale and layout margins;
- radii, borders, elevation, material, and lighting direction;
- icon family, stroke/fill weight, optical size, and decorative semantics;
- control heights, horizontal padding, label baselines, focus treatment, and state behavior;
- motion durations, easing, reduced-motion behavior, and interruption rules;
- window/container size policies and responsive breakpoints based on content.

Peer actions that are intended to read as a set must share height, radius, vertical padding, baseline, and state geometry. Use equal width when the actions have equal rank; use content width deliberately when rank or available space differs. Check optical centering, not only numeric constraints.

Never solve a repeated defect in one screen when its cause is a token or shared component. Audit every consumer after changing a primitive.

Read [system-and-craft.md](references/system-and-craft.md) for component geometry, layout, typography, color, surfaces, icons, motion, and accessibility details.

## 4. Implement in task order

1. Build semantic structure and state ownership.
2. Establish layout, reflow, window sizing, and scroll behavior.
3. Apply typography and content hierarchy.
4. Apply color, material, imagery, and iconography.
5. Implement every interaction state and keyboard path.
6. Add restrained motion only when it explains change, confirms action, or preserves spatial continuity.
7. Add empty, loading, error, success, offline, permission, and recovery states where the product can reach them.

Use native controls and semantics before custom replicas. Match the existing framework and styling method. Do not introduce a second UI stack for a cosmetic change.

When an installed platform skill covers the actual stack—such as Apple HIG, macOS/SwiftUI/AppKit, iOS, web, or React Native—load it for implementation mechanics. This master skill owns direction, quality gates, evidence, and final coherence; the platform skill owns framework-specific APIs and conventions.

For AI features, make scope, inputs, sources, progress, confidence limits, cost, reversibility, and the boundary between suggestion and action visible. Require preview or confirmation proportional to the consequence. Never present a static or inferred status as a live verified fact.

## 5. Review as one product

Review foundational domains before surface polish:

1. Accessibility and input methods
2. Product flow, clarity, trust, and recovery
3. Layout, resizing, scrolling, and localization growth
4. Writing and information hierarchy
5. Typography
6. Color and contrast
7. Components, imagery, surfaces, icons, and motion
8. Cross-screen consistency and release truth

Use one finding per root cause. Rank shared primitives above isolated symptoms. Every finding needs evidence from the correct layer:

- source evidence for implementation facts;
- rendered evidence for visual claims;
- interaction evidence for behavior claims;
- installed or deployed evidence for release claims.

Do not infer keyboard access, screen-reader output, clipping, animation behavior, or deployed state from a static screenshot. Do not infer visual quality from source alone.

Read [review-contract.md](references/review-contract.md) for scope, severity, output, caps, and verdict rules.

## 6. Verify the actual experience

Create a surface-by-state matrix and exercise it. At minimum:

- normal, minimum, and large window/viewport sizes;
- 200% zoom or the platform's relevant text-size setting;
- light/dark/high-contrast modes the product claims to support;
- keyboard traversal, focus visibility, shortcuts, Escape, and focus restoration;
- accessible name, role, value, and dynamic announcements;
- real content extremes, localization growth, empty, loading, error, and permission-denied states;
- destructive confirmation and recovery;
- repeated actions, cancellation, interruption, and reopen/restoration;
- actual installed app or deployed URL when evaluating a release.

Inspect rather than assume. Capture before/after evidence at matching dimensions when implementing visual changes. A successful build, signature, notarization, test suite, or preview does not prove the installed or deployed interface works.

Read [evidence-and-verification.md](references/evidence-and-verification.md) for the complete proof ladder, platform matrices, and release gate.

## 7. Run the final slop gate

Before calling work complete, check all of these:

- no clipped, overlapped, off-screen, or unreachable content;
- no accidental horizontal scrolling;
- no critical action below the fold without a visible continuation cue;
- no mismatched peer-button geometry or label baselines;
- no one-off spacing, radius, font, color, or icon that should use a shared token;
- no tiny or low-contrast secondary text masquerading as polish;
- no active state shown only by color;
- no missing hover, focus, active, selected, disabled, loading, empty, error, or success state;
- no unlabeled icon control, pointer-only path, broken focus order, or ignored reduced-motion preference;
- no generic filler copy, unexplained jargon, fake data, hard-coded personal greeting, or false readiness claim;
- no decorative effect competing with the task hierarchy;
- no CSS or rendering trick that fights the platform;
- no claim of completion beyond the evidence actually gathered.

Use `scripts/scan-interface-risks.sh <project-root>` as a fast candidate scan when the project contains source code. Treat its output as leads, never findings.

## Completion contract

Lead with the outcome. State what changed or what was reviewed, what was physically verified, what remains unverified, and the verdict or release status. Link to real files with exact lines when possible.

Do not publish, deploy, buy, send, delete, or grant permissions unless the user explicitly authorized that action. “Production ready” authorizes preparation and verification, not publication by itself.
