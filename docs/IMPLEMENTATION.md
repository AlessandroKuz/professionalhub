# Implementation Guide

> **Status: Work in Progress**
> This document describes the current and planned implementation of the ProfessionalHub
> workflow. Tool choices and automation details will be refined as each phase is built.
> Treat everything in the "planned" sections as directional, not final.

---

## Overview

The ProfessionalHub workflow is designed to evolve through three phases:

| Phase | Approach | Status |
|---|---|---|
| 1. Manual | Fill hub, prompt an LLM manually, save outputs | Current |
| 2. Semi-automated | n8n workflows for common output generation tasks | Planned |
| 3. Fully integrated | Local LLM + RAG for intelligent querying and generation | Planned |

This document covers Phase 1 in full. Phases 2 and 3 are described at a high level
and will be expanded into dedicated documents when the time comes.

---

## Phase 1: Manual Workflow

### Step 1: Fill In Your Hub

Open `PROFESSIONAL_HUB.md` in your editor of choice and fill in your data.
The hub is a plain Markdown file - any text editor works.

For guidance on how to approach each section, see the
[Compilation Guide](guides/COMPILATION_GUIDE.md).

There is no required order. A practical starting sequence:

1. **About Me** - grounds everything else
2. **Professional Experiences** - the bulk of the content
3. **Skills** - map what you know while your experiences are fresh in your mind
4. **Education & Courses** - usually quick to fill in once you start
5. Everything else as you go

### Step 2: Generate an Output

When you need a CV, cover letter, or other output:

1. Open your `PROFESSIONAL_HUB.md`
2. Copy the relevant sections - or the full document for best results
3. Open an LLM of your choice (local model recommended for privacy)
4. Use the appropriate prompt template from the [Output Guide](guides/OUTPUT_GUIDE.md)
5. Paste the prompt, then paste your hub content below it
6. Review the output, edit it until it sounds like you, then save it

### Step 3: Save Your Outputs

Save all generated outputs in your `professionaldata` private repository under `outputs/`.

**Naming convention:**

```
outputs/
├── cv/
│   ├── cv_[company]_[YYYY-MM-DD].md
│   └── cv_[company]_[YYYY-MM-DD].pdf
├── cover-letters/
│   └── coverletter_[company]_[YYYY-MM-DD].md
└── pitches/
    └── pitch_[context]_[YYYY-MM-DD].md
```

Examples:

- `cv_acme_2026-04-21.md`
- `coverletter_stripe_2026-04-21.md`
- `pitch_upwork-ml-profile_2026-04-21.md`

Use lowercase and hyphens. Keep company names short and recognizable.
If there is no specific company (e.g. a generic ML-focused CV), use a descriptive
label instead: `cv_ml-engineer-generic_2026-04-21.md`.

### Versioning Suggestions

The `professionaldata` repository is versioned with Git. Some habits worth considering:

- Commit after every meaningful update to the hub - treat it like a personal changelog
- Write short but descriptive commit messages: `add freelance experience at X`,
  `update python skills section`, `expand about me`
- Before a significant job search or pitch cycle, consider tagging a version:
  `git tag -a v2026-04 -m "snapshot before april job search"` - this gives you a
  clean reference point to compare against later
- Outputs can be committed too - having a record of what you sent where and when
  is genuinely useful over time

These are suggestions, not requirements. The most important thing is that the hub
stays up to date. The commit hygiene is secondary.

---

## Phase 2: Semi-Automated Workflow with n8n (Planned)

> **Status: Planned - not yet implemented.**
> This section will be expanded into a dedicated document when Phase 2 is built.

The goal of Phase 2 is to reduce the repetitive manual steps in the current workflow
using n8n, a self-hostable workflow automation tool.

Intended capabilities:

- Trigger output generation from a simple form or command
- Automatically pull the latest hub content from the `professionaldata` repository
- Pass hub content and a selected prompt template to a configured LLM API
- Save the generated output back to the repository with the correct naming convention
- Optionally notify via a preferred channel when the output is ready

Tool choices, API configurations, and n8n workflow designs will be defined when
this phase is actively developed.

---

## Phase 3: Local LLM + RAG Integration (Planned)

> **Status: Planned - not yet implemented.**
> This section will be expanded into a dedicated document when Phase 3 is built.

The goal of Phase 3 is to pair the hub with a local, privacy-focused language model
with retrieval-augmented generation (RAG) capabilities. All data stays on your machine.

Intended capabilities:

- Query your hub conversationally: "How should I position myself for a senior ML role
  at a fintech startup?"
- Generate tailored outputs with full context awareness across the entire hub
- Identify skill gaps relative to a specific job description
- Suggest learning roadmap steps from your current skill level toward a target role
- Compare your positioning across different career titles and industries

The implementation will be designed so that no personal data leaves your local
environment. Model choices, RAG architecture, and tooling will be defined when this
phase is actively developed.

---

## Adding a New Output Type

When you need to generate a type of output not yet covered in the
[Output Guide](guides/OUTPUT_GUIDE.md):

1. Draft a prompt for the new output type following the same structure as existing prompts
2. Test it a few times and refine it until the results are consistently useful
3. Add it to `docs/guides/OUTPUT_GUIDE.md` so it is available for future use
4. If it introduces a new `outputs/` subfolder, document the naming convention here

---

## Revision Log

| Version | Date | Change |
|---|---|---|
| 1.0 | 2026-04-21 | Initial document |
