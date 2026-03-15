# taste

Domain-grounded judgment for AI agents. `taste` teaches an agent to understand what good looks like in a domain before it creates, not after.

## Repo layout

```text
taste/
├── SKILL.md
├── agents/
│   └── openai.yaml
└── references/
    ├── DOMAIN_MODES.md
    ├── ANTI_PATTERNS.md
    └── EVALUATION.md
```

## Install

### Codex

Link this repo into your local skills directory:

```sh
mkdir -p ~/.codex/skills
ln -sfn /path/to/taste ~/.codex/skills/taste
```

### Claude Code

Copy the folder to `~/.claude/skills/taste/` or `.claude/skills/taste/`.

### Other agents

Copy the folder wherever your agent reads skill definitions. There are no runtime dependencies.

## Use

```text
Use $taste on this component. It works, but it feels generated.
Apply $taste to this spec and cut what does not earn its place.
Create this landing page with $taste. I want it to feel authored.
```
