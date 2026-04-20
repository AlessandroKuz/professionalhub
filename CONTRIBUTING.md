# Contributing to ProfessionalHub

ProfessionalHub is primarily a personal system, but it is designed to be reusable by
anyone who wants to manage their professional identity in a structured way. Contributions
that improve the system, the template, or the documentation are welcome.

---

## Core Philosophy

Before making any change, check it against the three core principles:

- **Flexibility over rigidity** - the system should adapt to how careers actually work,
  not force users into a schema that becomes a burden.
- **Depth at the source, brevity at the output** - the hub is comprehensive by design.
  Summarization happens at output time, never in the hub itself.
- **Encouragement over bureaucracy** - the system should feel like a helpful notebook,
  not a corporate HR form.

If a proposed change conflicts with any of these, it is probably wrong.

---

## Adding a New Section to the Hub

If you find yourself repeatedly writing the same type of information in the
**Other / Extra** section, it is a signal that a new dedicated section may be warranted.

Steps to add a new section:

1. Define the section purpose clearly in `docs/PROJECT_CONTEXT.md` under section 5.
2. Add the corresponding placeholder block to `templates/PROFESSIONAL_HUB.md`.
3. Update the section table in `README.md`.
4. Update the section count reference anywhere it appears (currently "15 sections").
5. If the section produces a new output type, add a row to the output table in
   `docs/PROJECT_CONTEXT.md` under section 6.

---

## Editing the Template

The template in `templates/PROFESSIONAL_HUB.md` is the blank starting point for all users.
Keep it:

- **Gentle**: placeholder text should guide, not intimidate. Write prompts, not demands.
- **Flexible**: avoid required fields. Suggest what is useful, never mandate it.
- **Minimal**: the template shows structure, not content. Comments and prompts should
  be short and easy to delete once the user starts writing.

---

## Development Setup

```bash
# Clone the repo
git clone https://github.com/alessandrokuz/professionalhub.git
cd professionalhub

# Install dependencies
uv sync

# Install pre-commit hooks
uv run pre-commit install

# Serve docs locally
uv run mkdocs serve
```

---

## Before Committing

Pre-commit hooks run automatically on `git commit`. To run them manually:

```bash
uv run pre-commit run --all-files
```

Hooks check for: ruff lint errors, ruff formatting, trailing whitespace, missing
end-of-file newlines, valid YAML, valid TOML, and merge conflict markers.

---

## Docs Deployment

Documentation is automatically deployed to GitHub Pages on every push to `main` via
the GitHub Actions workflow in `.github/workflows/docs.yml`. No manual steps needed.

To preview locally before pushing:

```bash
uv run mkdocs serve
# open http://127.0.0.1:8000
```

---

## Updating Dependencies

```bash
# Update all pre-commit hooks to latest versions
uv run pre-commit autoupdate

# Update Python dependencies
uv sync --upgrade
```

Commit the updated `uv.lock` and `.pre-commit-config.yaml` after running these.
