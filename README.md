# taste

`taste` is an agent skill for domain-grounded judgment during creation. It helps an agent understand what good looks like in a domain before it writes code, designs UI, drafts documents, or shapes other deliverables.

This repo is intentionally usable in two ways:
- As a skill directory directly
- As a GitHub repo with setup helpers and packaging scripts

## Repo layout

```text
taste/
├── SKILL.md
├── README.md
├── .gitignore
├── agents/
│   └── openai.yaml
├── references/
│   ├── DOMAIN_MODES.md
│   ├── ANTI_PATTERNS.md
│   └── EVALUATION.md
├── scripts/
│   ├── install.sh
│   └── package-claude-skill.sh
└── assets/
```

## Quick setup

### Codex

Clone the repo, then link it into your local skills directory:

```sh
git clone https://github.com/Hmbown/taste.git
cd taste
./scripts/install.sh codex
```

That creates or updates:

```text
~/.codex/skills/taste -> /absolute/path/to/this/repo
```

### Claude Code

Clone the repo, then copy the skill into Claude's skills directory:

```sh
git clone https://github.com/Hmbown/taste.git
cd taste
./scripts/install.sh claude
```

That creates or updates:

```text
~/.claude/skills/taste/
```

### Auto-detect

If you want the script to install into both locations when available:

```sh
./scripts/install.sh all
```

## Manual setup

### Codex manual install

```sh
mkdir -p ~/.codex/skills
ln -sfn "$(pwd)" ~/.codex/skills/taste
```

### Claude Code manual install

```sh
mkdir -p ~/.claude/skills
rm -rf ~/.claude/skills/taste
cp -R . ~/.claude/skills/taste
```

## Usage

```text
Use $taste on this component. It works, but it feels generated.
Apply $taste to this spec and cut what does not earn its place.
Create this landing page with $taste. I want it to feel authored.
```

## Notes

- Codex works best when the repo is symlinked directly so changes to the repo are immediately reflected in the installed skill.
- Claude Code generally expects a copied skill directory.
- The skill itself lives at the repo root so either agent can consume the same canonical files.

## Packaging for Claude

To build a distributable zip for Claude-style installation:

```sh
./scripts/package-claude-skill.sh
```

This writes `dist/taste.skill`.

## Assets and release packaging

- Brand assets live in `assets/`.
- `agents/openai.yaml` exposes the icon and brand color for skill UIs.
- GitHub Actions now builds `dist/taste.skill` automatically on tags matching `v*` and attaches it to a GitHub release.

### Cut a release

```sh
git tag v0.3.1
git push origin v0.3.1
```

That triggers the release workflow and publishes `taste.skill` as a release artifact.
