---
name: taste
description: "Domain-grounded judgment for creation — code, visuals, documents, design, data artifacts, and any other output where quality requires more than competence. Apply this skill when creating anything where the difference between good and great is what you chose NOT to include, or when the user asks for output that feels authored rather than generated. Triggers on: 'make this good', 'clean this up', 'this feels off', 'less is more', 'tighten this', 'use taste', 'apply taste', 'tasteful', professional deliverables, polished output, or any creation task in a domain with strong practitioner norms. Also trigger when the output is high-stakes, externally visible, or when the user is clearly sophisticated. Do NOT trigger on exhaustive extraction, verbatim transformation, or tasks where judgment is explicitly unwanted."
metadata:
  author: Hunter Bown
  version: "0.2.0"
  style: instruction-only
  compatibility: Agent Skills compatible clients including Claude Code and OpenAI Codex-style agents
---

# Taste

Taste is domain-grounded judgment applied during creation. Not a post-hoc polish. Not a slop-removal checklist. It is the difference between an agent that pattern-matches "this looks like AI output, remove it" and one that actually understands what practitioners in a field consider good — and creates from that understanding.

The failure mode this skill corrects: agents produce output that is technically complete but obviously generated. Not because the information is wrong, but because the judgment is absent. Equal weight given to unequal ideas. Structure imposed because templates exist, not because the content needs it. Details included because they were available, not because they matter.

Taste fixes this by requiring you to **know the domain before you touch the work.**

## The Grounding Requirement

This is the mechanism that separates taste from pattern matching.

Before creating anything, you must establish a domain model. Not by guessing — by actually knowing. The depth required scales with how far the domain is from your reliable knowledge:

**If you know the domain cold** (common programming languages, standard document formats, well-established design patterns): State your assumptions about the quality bar and move. Don't perform research theater.

**If you know the domain but not the current state** (a framework you haven't seen recent docs for, a company's brand you haven't looked at, a field where standards shift): Research first. Look at current exemplars, docs, or conventions. Spend the time — a grounded first draft beats an ungrounded third draft.

**If the domain is unfamiliar or specialized** (niche industry, specific org's conventions, emerging technology, creative brief with particular references): Stop and learn before you create. Read exemplars. Look at what practitioners actually produce — not tutorials about the domain, but the work itself. Understand what they spend their attention on and what they take for granted.

The grounding step produces three things:
1. **The quality bar** — what "good" actually looks like here, with specific reference points
2. **The assumed knowledge** — what the audience already knows and will be insulted to see explained
3. **The attention budget** — where practitioners in this domain spend their care, and where they don't

Skip the grounding step only when the domain is obvious and you are certain. When uncertain, ground.

## Core Principles

### 1. Exclusion is the primary act of taste

The first and most important judgment is what to leave out. Not what sounds like AI slop — what genuinely doesn't serve the work. This requires knowing enough about the domain to distinguish between "this is unnecessary" and "this seems unnecessary to me because I don't understand its function."

A junior developer might cut error handling that looks verbose. A senior one knows it's there for a reason. Taste without domain knowledge is just confidence.

### 2. Every element must earn its place

Nothing gets included by default — not a section header, not a type annotation, not a color choice, not a paragraph. Each element has to answer: what does this do for the person who encounters the work? If the answer is "it's conventional" or "it's expected" or "it makes it look complete," that's not earning its place.

The exception: when the convention itself carries meaning. A README with standard sections isn't cargo-culting if users navigate by those sections. A consistent color system isn't decoration if it encodes hierarchy. Know the difference.

### 3. Commit to the spine

Every piece of created work has a controlling idea — the one thing it's really doing. A function's actual job. A document's real argument. A design's primary action. Find it and orient everything around it.

When you can't find the spine, the work isn't ready to be built yet. Define it first.

### 4. Specificity over sophistication

A concrete detail grounded in the actual domain beats an elegant abstraction every time. Name the real thing. Use the actual number. Reference the specific pattern. Sophistication that isn't anchored to something real is just decoration.

### 5. Match the register, don't perform it

Every domain has a way practitioners actually communicate with each other. API docs sound different from pitch decks, which sound different from commit messages, which sound different from design critiques. The register isn't about formality level — it's about what the domain treats as signal versus noise.

Getting the register wrong is the fastest way to signal "I don't actually work in this field." Getting it right is invisible — which is the point.

### 6. Stop at the right level of finish

Overfinishing is a taste failure. A function with more abstraction than it needs, a document with more polish than the context warrants, a design with more refinement than the user will notice — these are all failures of judgment about where effort belongs.

The right level of finish is the point where additional work improves the experience of the person who encounters it. Past that point, you're serving your own anxiety.

## Workflow

### Step 1: Ground

Determine what "good" means in this specific context. See the grounding requirement above.

For common creation domains, load the relevant section from `references/DOMAIN_MODES.md` — but treat it as a starting point, not a substitute for actual domain knowledge.

### Step 2: Frame

Before creating, establish:

- What is this work's single job?
- Who encounters it, and what do they already know?
- What is the right level of finish for this context?
- What are the domain-specific signals of quality? (Not generic signals — *this domain's* signals.)

If you can't answer these, you're not ready to create. Research or ask.

### Step 3: Create with the filter on

Build from the spine outward. At every decision point — what to include, how to structure, what level of detail, what register — apply the domain model you built in Step 1.

This is not "create first, then edit." The filter is active during creation. You are making judgment calls as you go, not cleaning up after yourself.

### Step 4: Subtract

After the first pass, look for:

- Anything included because it was available, not because it serves the work
- Structure imposed by habit rather than by need
- Details that would be obvious to the actual audience
- Places where you hedged instead of committed
- Sections or elements that exist because "you should have one" rather than because the work needs it

Remove them.

### Step 5: Verify the spine

Read the work back. Is the controlling idea clear? Does every element either support it or get out of its way? Is there one thing the reader/user takes away, and is it the right thing?

If the spine is muddy, the problem usually isn't that something is missing — it's that something is competing.

### Step 6: Calibrate finish

Check against the quality bar from Step 1. Not "is this as good as I can make it" but "is this at the right level for the context." A quick internal tool doesn't need the same finish as a public-facing product. A working prototype doesn't need the same taste as a shipped feature. Match the finish to the stakes.

## What This Skill Does NOT Do

- It does not apply a universal set of "good writing" or "good code" rules. The rules come from the domain.
- It does not just remove AI-isms. Pattern-matching on "Great question!" is the lowest form of taste.
- It does not default to minimalism. Sometimes the tasteful choice is rich, dense, maximal — if that's what the domain and context require.
- It does not substitute for research. If you don't know the domain, this skill tells you to go learn it, not to fake it.

## Reference Files

Load these as needed — don't read all of them for every task:

- `references/DOMAIN_MODES.md` — Creation-specific guidance for code, visual design, documents, data artifacts, and system design. Read the section relevant to your current task.
- `references/ANTI_PATTERNS.md` — The most common ways agents fake taste during creation. Scan when you suspect your output is falling into a pattern.
- `references/EVALUATION.md` — Scoring rubric. Use when the bar is high or when you need to self-check before delivering.
