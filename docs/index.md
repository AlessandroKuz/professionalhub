# ProfessionalHub

Welcome to the **ProfessionalHub** documentation.

**ProfessionalHub** is a personal system for managing your professional identity as a single
source of truth. Everything about your career, skills, education, and positioning lives
in one comprehensive Markdown document - then, using a LLM of your choice, you can filter
and tailor for any output format you need: CVs, cover letters, portfolio sites, LinkedIn,
freelance platforms, and more.

## Documents

- [Project Context](PROJECT_CONTEXT.md): the theory and scope of the system. Start here.
- [Implementation Guide](IMPLEMENTATION.md): current workflow and planned automation phases.
- [Compilation Guide](guides/COMPILATION_GUIDE.md): how to fill in each section of the hub.
- [Output Guide](guides/OUTPUT_GUIDE.md): prompt templates for generating CVs, cover letters, and more.

## Quick Start

1. Read [Project Context](PROJECT_CONTEXT.md) to understand the system.
2. Create a new private repository for your personal data called `professionaldata` - it's a good idea to have a backup and versioning on your data, but you can also skip it and just create a folder and file manually.
3. Copy `docs/templates/PROFESSIONAL_HUB.md` into `professionaldata/`.
4. Start filling in your data - one section at a time, no rush.

## Repository Structure

| Repo | Visibility | Purpose |
|---|---|---|
| `professionalhub` (this repo) | Public | System docs, templates, tooling |
| `professionaldata` (your private data repo) | Private | Your actual data and generated outputs |
