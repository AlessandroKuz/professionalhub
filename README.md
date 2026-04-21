# ProfessionalHub

> One document to know yourself. Every output flows from it.

**ProfessionalHub** is a personal system for managing your professional identity.
The idea is simple: keep one comprehensive, private Markdown document with everything
about you - your experiences, skills, projects, education, and positioning - and use it
as the raw material for every CV, cover letter, portfolio, or platform profile you will
ever need to write.

No more reconstructing your history from memory. No more inconsistent versions of yourself
across platforms. One source, infinite outputs.

---

## How It Works

```
PROFESSIONAL_HUB.md  (your private data)
        |
        |-- filter + tailor --> CV / Resume
        |-- filter + tailor --> Cover Letter
        |-- filter + tailor --> LinkedIn Summary
        |-- filter + tailor --> Portfolio / Website
        |-- filter + tailor --> Freelance Platform Bio
        |-- filter + tailor --> Client Proposal
        └-- filter + tailor --> ... anything else
```

The hub is always the input. Every output is a filtered, reworked version of it - never
written from scratch, always tailored to the specific audience and context.

---

## Getting Started

### 1. Copy the template

Grab `docs/templates/PROFESSIONAL_HUB.md` from this repo and place it in a new **private**
repository of your own `professionaldata` is suggested, it should also be a subfolder
of the main directory (`professionalhub`). That private repo is where your actual
data lives. This repo contains only the system, not the data.

### 2. Read the docs

The [documentation site](https://alessandrokuz.github.io/professionalhub/) has everything
you need to understand the system before you start writing:

- **Project Context**: the full theory and reasoning behind the system
- **Implementation Guide**: current workflow and planned automation phases
- **Compilation Guide**: section-by-section help for filling in your hub
- **Output Guide**: ready-to-use prompt templates for CVs, cover letters, and more

### 3. Start writing

Open your `PROFESSIONAL_HUB.md` and start filling in what you know. There is no required
order. Empty sections are fine - they are placeholders, not obligations. The goal is to
build up the document over time, not to complete it in a single sitting.

Start with the sections that feel most natural. A good first target:

- **About Me** - who you are in your own words
- **Professional Experiences** - what you have done and built
- **Skills** - what you know and how well you know it

---

## What Is In The Template

The hub is divided into 15 sections:

| # | Section | What Goes Here |
|---|---|---|
| 1 | About Me | Personal narrative, identity, working style |
| 2 | Career Titles & Positioning | Roles you identify with and your level in each |
| 3 | Elevator Pitches | Ready-to-adapt positioning statements per audience |
| 4 | Education & Courses | Degrees, bootcamps, online courses, self-study |
| 5 | Certifications & Licenses | Formally accredited credentials |
| 6 | Professional Experiences | Jobs, freelance, consulting - what you built and learned |
| 7 | Projects | Personal, open-source, experimental work |
| 8 | Skills | Hierarchical skill map with self-assessed depth levels |
| 9 | Languages | Spoken and written languages with proficiency |
| 10 | Publications & Talks | Articles, talks, podcasts, guest features |
| 11 | Awards & Recognition | Competitions, mentions, featured work |
| 12 | Volunteer & Extracurricular | Community, mentoring, side involvement |
| 13 | Online Presence & Links | All your professional profiles in one place |
| 14 | Availability & Preferences | Current status, contract preferences, rate (private) |
| 15 | Other / Extra | Inbox for anything that does not fit yet |

---

## Repository Structure

```
professionalhub/               # This repo (public)
├── README.md                  # You are here
├── CONTRIBUTING.md            # How to extend or adapt the system
├── mkdocs.yml                 # MkDocs Material configuration
├── pyproject.toml             # Python dependencies (managed via uv)
├── .pre-commit-config.yaml    # Pre-commit hooks (ruff lint, format, file checks)
├── .python-version            # Python version pin (managed via uv)
├── .github/
│   └── workflows/
│       └── docs.yml           # Auto-deploy docs to GitHub Pages
└── docs/
    ├── index.md               # Documentation home page
    ├── PROJECT_CONTEXT.md     # Theory and scope of the system
    ├── IMPLEMENTATION.md      # Practical workflow guide
    ├── guides/
    │   ├── COMPILATION_GUIDE.md
    │   └── OUTPUT_GUIDE.md
    └── templates/
        └── PROFESSIONAL_HUB.md   # Blank template: copy this to your private repo

professionaldata/              # Your private repo (not in this repo)
├── PROFESSIONAL_HUB.md        # Your actual data
└── outputs/
    ├── cv/
    ├── cover-letters/
    └── pitches/
```

---

## Documentation

Full documentation is available at:
**[alessandrokuz.github.io/professionalhub/](https://alessandrokuz.github.io/professionalhub/)**

To run the docs locally:

```bash
uv run mkdocs serve
```

Or to enable live reload on file changes:

```bash
uv run mkdocs serve --livereload
```

---

## Future Plans

- **n8n integration**: semi-automated output generation triggered from a simple form or command
- **Local LLM + RAG**: query your own data with a privacy-focused local model to generate
  tailored outputs, identify skill gaps, and build personal learning roadmaps

---

## License

[MIT License](LICENSE.md) - use this system however you like.
