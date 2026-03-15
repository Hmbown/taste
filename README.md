# taste

Domain-grounded judgment for AI agents. Teaches agents to understand what "good" looks like in a domain before they create — not after.

## Install

**Claude Code** — extract `taste.skill` to your skills directory:

```sh
unzip taste.skill -d ~/.claude/skills/
```

Or copy the `taste/` folder to `~/.claude/skills/taste/` (global) or `.claude/skills/taste/` (per-repo).

**Other agents** — copy `taste/` wherever your agent reads skill definitions. No runtime dependencies.

## Usage

```
"Use taste on this component — it works but it feels generated."
"Apply taste to this spec. What shouldn't be here?"
"Create this landing page with taste — I don't want it to look like AI made it."
```

## What's inside

```
taste/
├── SKILL.md              Core skill: grounding protocol, principles, workflow
└── references/
    ├── DOMAIN_MODES.md   Guidance for code, visual design, docs, data, architecture
    ├── ANTI_PATTERNS.md   Ways agents fake taste — and how to catch each one
    └── EVALUATION.md      Scoring rubric (30-point, weighted toward domain grounding)
```
