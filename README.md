# Master Design

Master Design is an evidence-driven interface design skill for Codex and compatible agents. It unifies product framing, visual direction, UX flows, design systems, accessibility, implementation craft, whole-product review, and installed or deployed verification.

It treats visual quality and behavioral quality as one discipline: understand the real product, design shared primitives before isolated screens, verify the interface people actually use, and never claim more than the evidence proves.

## What it covers

- Product framing and UX flow design
- Visual direction and reference-based reconstruction
- Design systems, tokens, components, typography, color, and motion
- Web, mobile, and native interface implementation guidance
- Accessibility, keyboard, resizing, theme, and state verification
- Full-product reviews with evidence-backed findings and verdicts
- Pre-launch polish and installed or deployed release gates

## Install

Clone the repository into your Codex skills directory:

```bash
git clone https://github.com/templetongroup/master-design-interface-skill.git ~/.codex/skills/master-design
```

Restart Codex if it is already running. The skill can then be invoked as `$master-design`.

## Use

Examples:

```text
Use $master-design to review this app in full review mode.
Use $master-design to redesign this workflow and implement the approved direction.
Use $master-design to run a pre-launch design and accessibility gate.
```

Master Design selects one of six operating modes—`frame`, `direct`, `build`, `review`, `polish`, or `ship`—from the request. Review mode is read-only. Publication and other external actions still require explicit authorization.

## Repository structure

- `SKILL.md` — entrypoint and operating contract
- `references/` — product, style, system, review, evidence, and provenance guidance
- `scripts/scan-interface-risks.sh` — optional fast candidate scan for source repositories
- `agents/openai.yaml` — display metadata for supported agent environments

The scan script requires [ripgrep](https://github.com/BurntSushi/ripgrep). Its output is only a lead list; findings still require source, rendered, interaction, or installed/deployed evidence.

## Provenance

Master Design is a synthesis of a broader interface-design skill library. The source categories and conflict decisions are documented in [`references/source-map.md`](references/source-map.md). It does not bundle or replace those source skills.

## Contributing

Keep changes evidence-driven and platform-aware. New rules should be durable, resolve a demonstrated gap, and preserve the hierarchy in `SKILL.md`: user intent, accessibility and truthfulness, platform conventions, the product's established system, task hierarchy, then stylistic novelty.

## License

MIT. See [`LICENSE`](LICENSE).
