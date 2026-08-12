# Review contract

Use this reference for interface, product, visual, accessibility, change, and release reviews.

## Resolve scope first

State the review target, mode, stack, conventions found, surfaces/states inspected, and boundaries.

- **Quick**: primary path, all relevant domains, HIGH and MEDIUM only, maximum 5 findings.
- **Full**: complete requested scope, including reachable states and size variants, maximum 15 findings.
- **Change**: resolve merge base and uncommitted work, inspect both sides of the diff, expand shared primitives to direct consumers, and classify findings as Introduced, Regression, or Pre-existing.
- **Release**: review the installed or deployed artifact in addition to source.

If the scope is too large to inspect credibly, select one complete critical flow and state the exclusion. Never say “every screen” unless every screen was inventoried and checked.

Reviews are read-only unless implementation is explicitly requested.

## Evidence rules

Every finding must include:

- exact file and line, or exact screen/state/component when source is unavailable;
- current implementation or observed behavior;
- concrete replacement or outcome;
- user impact;
- evidence layer: source, render, interaction, or installed/deployed.

Do not turn a missing verification into a finding. Mark it **Not verified**. Do not report source-only theories as observed visual defects.

## Severity

- **HIGH**: blocks a task; hides or makes a control unreachable; misleads the user; risks data loss, privacy, or irreversible action; creates a systemic accessibility failure; or repeats across a critical flow.
- **MEDIUM**: meaningfully harms comprehension, efficiency, adaptation, recovery, or cross-screen consistency.
- **LOW**: isolated polish with limited task impact. Include only in Full mode.

The following are HIGH when confirmed:

- unnamed interactive control;
- keyboard-reachable control with no visible focus, or pointer-only path;
- critical content/control clipped or unreachable at a supported size or 200% zoom;
- required contrast failure for body or control text;
- meaning conveyed only by color;
- ignored reduced-motion preference for significant/autoplaying motion;
- destructive action with no distinct treatment plus confirmation, undo, or safe recovery;
- status or readiness claim that is static, stale, or contradicted by real state.

Rank first by severity, then reach, frequency, and leverage. One shared root cause is one finding with all confirmed locations. Never pad the report.

## Required output

### Scope and coverage

Include the mode, scope, stack, conventions, boundary, and a coverage table:

| Domain | Evidence inspected | Result |
| --- | --- | --- |
| Accessibility | Files, screens, interactions, checks | Finding count, Clear, or Not reviewed with reason |

Cover: accessibility; product/flow/trust; layout/adaptation; writing; typography; color; UI/craft/motion; consistency/release truth.

### Findings

| # | Severity | Domain | Location | Before | After | Why / evidence |
| --- | --- | --- | --- | --- | --- | --- |

For change reviews, add **Status** after Domain. Keep Pre-existing findings in a separate table, maximum 3, and exclude them from the verdict.

### Considered but rejected

Include 1–3 candidates in Quick and 2–5 in Full. These must be real alternatives rejected because evidence was insufficient, the current choice is defensible, or the change would add complexity without user benefit.

### Verification

List exact commands or interaction steps and observed results. Separate passed checks from **Not verified** checks.

### Verdict

End with exactly one:

- `Block` — one or more HIGH findings remain.
- `Needs changes` — only MEDIUM or LOW findings remain.
- `Approve` — no actionable findings remain and the claimed coverage was verified.

For an implementation or ship task, use the same logic but call the result a release gate. Never approve based only on source, a build, or a screenshot when runtime evidence is required.
