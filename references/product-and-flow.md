# Product, flow, trust, and content

Use this reference when framing a product, reviewing a workflow, designing AI behavior, or fixing unclear state and copy.

## Start from the job

Write the user story as: **When [situation], I need to [action], so I can [outcome].** Identify the primary actor, their expertise, frequency, environment, constraints, and cost of failure. Separate what is known from what is assumed.

Use research proportional to uncertainty:

- behavior question: observation, analytics, or usability testing;
- motivation question: interview or field study;
- information architecture: card sorting or tree testing;
- solution comparison: prototype test or A/B test after the experience is stable;
- prevalence: analytics or survey with representative sampling.

Do not invent persona demographics. Keep only goals, behavior, context, constraints, and frustrations that change a design decision.

## Flow test

For each complete job, verify:

1. **Orientation** — users can tell where they are and what the product can do.
2. **Start** — the primary action is specific, available, and close to its prerequisites.
3. **Progress** — the interface shows what is happening, what remains, and whether the user may leave.
4. **Control** — users can cancel, pause, undo, revise, or choose a safer alternative.
5. **Completion** — the result is visible, named, saved where expected, and has an obvious next action.
6. **Failure** — the error explains what happened, what was preserved, and how to recover.
7. **Return** — reopening restores or explains prior state without surprising duplication or loss.

Keep friction when it prevents irreversible, expensive, privacy-sensitive, or high-impact mistakes. Remove friction that merely compensates for poor defaults or hidden state.

## Cognitive-load tests

- **Three-second test**: can a new user identify the page and primary action?
- **Squint test**: does visual emphasis match task importance?
- **Subtraction test**: can an element disappear without losing meaning or control?
- **Memory test**: must users remember information the interface could show?
- **Choice test**: can the system recommend, default, infer, or defer a low-risk decision?
- **Mode test**: can users tell what state or mode the product is in before acting?

Do not optimize for minimum clicks when clarity or confidence matters more. Optimize for minimum avoidable thought.

## Content rules

- Use the user's vocabulary, concrete verbs, and sentence case unless the platform convention requires otherwise.
- Name actions by their result: “Export transcript,” not “Continue”; “Stop & insert,” not “Done.”
- Put instructions beside the decision they govern.
- Explain disabled controls or avoid disabling them before validation when an actionable error would teach more.
- Write errors as: **what happened + what was preserved + what to do next**.
- Use real representative content. Stress layouts with long names, dates, numbers, paths, translations, and empty values.
- Avoid filler, marketing clichés, “Oops,” fake precision, placeholder people, and unnecessary exclamation marks.
- Personalize only from a real profile or user setting and always provide a neutral fallback. Never hard-code a person's name in product copy.
- Version and release labels must derive from the running artifact when they are shown.

## AI interaction rules

Make these answers visible before consequential AI actions:

- What will the AI read?
- What will it generate, change, send, store, remember, or reveal?
- Which app, record, audience, or scope is affected?
- Can the user preview, narrow, stop, edit, retry, compare, or undo?
- What is verified, inferred, uncertain, or unavailable?
- What will it cost in time, money, privacy, or irreversible effect?

Use open prompts for exploration, templates for repeatable structured work, inline actions for selected content, previews for bulk edits, recoverable versions for regeneration, and guided chains for multi-step work. A blank prompt is rarely sufficient wayfinding; provide contextual examples or suggested starts.

Do not use persuasive patterns to hide cost, force consent, manufacture urgency, obstruct cancellation, or make an AI suggestion look authoritative. Trust comes from honest scope, legible state, user control, and evidence.

## Prioritization

Rank work by user harm and reach first, then frequency and implementation leverage. A practical order is:

1. blocked tasks, data loss, misleading state, privacy, and accessibility blockers;
2. broken recovery, resizing, navigation, and repeated high-frequency friction;
3. shared-system inconsistency affecting many surfaces;
4. comprehension and efficiency improvements;
5. isolated polish.

Do not let an easy cosmetic fix outrank a systemic problem merely because it makes a better screenshot.
