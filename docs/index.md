# ProfessionalHub

Welcome to the ProfessionalHub documentation.

ProfessionalHub is a personal system for managing your professional identity as a single
source of truth. Everything about your career, skills, education, and positioning lives
in one comprehensive Markdown document - then, using a LLM of your choice, you can filter
and tailor for any output format you need: CVs, cover letters, portfolio sites, LinkedIn,
freelance platforms, and more.

## Documents

- [Project Context](PROJECT_CONTEXT.md) - The theory and scope of the system. Start here.
- `IMPLEMENTATION.md` - Tools, workflow, and how to generate outputs. *(coming soon)*

## Quick Start

1. Read [Project Context](PROJECT_CONTEXT.md) to understand the system.
2. Create a new private repository for your personal data called `professionaldata` - it's a good idea to have a backup and versioning on your data, but you can also skip it and just create a folder and file manually.
3. Copy `templates/PROFESSIONAL_HUB.md` into `professionaldata/`.
4. Start filling in your data - one section at a time, no rush.

## Repository Structure

| Repo | Visibility | Purpose |
|---|---|---|
| `professionalhub` (this repo) | Public | System docs, templates, tooling |
| `professionaldata` (your private data repo) | Private | Your actual data and generated outputs |
