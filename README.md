# taste

Your agent removes AI-isms. This skill makes it actually understand the domain first.

## The problem

Agents produce output that is technically complete but obviously generated. Not because the information is wrong — because the judgment is absent. Equal weight given to unequal ideas. Structure imposed from templates, not from need. Details included because they were available, not because they matter.

Removing "Great question!" and "It's worth noting" is cleanup. It's necessary, but it's the floor. Taste is what happens above that floor — and it requires knowing the domain.

## How it works

The skill forces a **grounding step** before creation. Before an agent writes a fintech dashboard component, it should understand how good fintech dashboards actually work. Before it structures a technical RFC, it should know how RFCs read at the org. The grounding produces three things:

1. **The quality bar** — what "good" looks like here, with specific reference points
2. **The assumed knowledge** — what the audience already knows and doesn't need explained
3. **The attention budget** — where practitioners in this domain spend their care

Then creation happens with the filter on, not applied after.

## Install

### Claude Code

Extract `taste.skill` to your skills directory:

```sh
unzip taste.skill -d ~/.claude/skills/
```

Or copy the `taste/` folder directly to `~/.claude/skills/taste/` (global) or `.claude/skills/taste/` (per-repo).

### Agent Skills (OpenAI/Codex-style)

Copy `taste/` to `~/.agents/skills/taste/` or `.agents/skills/taste/` in a repo.

### Manual

The skill is instruction-only — no runtime dependencies. Copy the files anywhere your agent reads skill definitions.

## Usage

```
"Use taste on this component — it works but it feels generated."
"Apply taste to this spec. What shouldn't be here?"
"Create this landing page with taste — I don't want it to look like AI made it."
"Use taste to evaluate these three options."
```

Also auto-triggers on requests for polished output, "make it tighter," "this feels off," high-stakes deliverables, and any creation domain with strong practitioner norms.

## What's inside

```
taste/
├── SKILL.md              Core skill: grounding protocol, principles, workflow
└── references/
    ├── DOMAIN_MODES.md   Domain-specific guidance (code, visual design, docs, data, architecture)
    ├── ANTI_PATTERNS.md   Seven ways agents fake taste — and how to catch each one
    └── EVALUATION.md      Scoring rubric (30-point scale weighted toward domain grounding)
```

- **SKILL.md** defines the six-step workflow: Ground, Frame, Create, Subtract, Verify the Spine, Calibrate Finish.
- **DOMAIN_MODES.md** covers where practitioners actually spend their attention in code, UI, writing, data viz, and system design.
- **ANTI_PATTERNS.md** names the failure modes — Savant Mode, Slop Removal as Taste, Minimalism Cargo Cult, Template Thinking, Comprehensiveness Theater, Defensive Hedging, Aesthetic Frosting, Over-Refinement.
- **EVALUATION.md** provides a fast-check and formal rubric across six dimensions: Domain Grounding, Signal-to-Noise, Spine, Calibrated Finish, Specificity, and Register.
