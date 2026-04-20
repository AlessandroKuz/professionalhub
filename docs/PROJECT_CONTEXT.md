# ProfessionalHub - Project Context & Scope

> This document defines the theory, purpose, and structure of the ProfessionalHub system.
> It is intended to be a stable reference that rarely changes. Tool choices, implementations,
> and workflow details live in a separate document (`IMPLEMENTATION.md`).

---

## 1. The Problem

Professional identity data is scattered. A CV lives in one file, a cover letter in another,
a LinkedIn profile in a third, a portfolio website somewhere else. Every time you apply for
a job, pitch a client, or update your website, you reconstruct the same information from
memory or from a patchwork of outdated documents. The result is inconsistency, wasted time,
and a constant risk of presenting a version of yourself that is incomplete or misaligned
with your current level.

There is no single place that holds the complete, honest, up-to-date picture of who you are
professionally.

---

## 2. The Solution

**ProfessionalHub** is a single, comprehensive Markdown document that acts as the master
source of truth for your entire professional identity. Every piece of relevant information
about your career, skills, education, projects, and positioning lives here - in full detail,
without compromise or summarization.

From this hub, all other outputs are derived. A CV is a filtered and formatted view of the
hub. A cover letter is a targeted narrative built from hub content. A LinkedIn summary is a
condensed version of the About Me and Elevator Pitches sections. Nothing is created from
scratch: everything is reworked from the hub.

The hub is not a public document. It is a private, personal knowledge base.

---

## 3. Core Principles

### Single Source of Truth

All professional data is maintained in one place. If you update your skills, you update the
hub. Everything else derives from the hub, never the other way around.

### Depth Over Brevity

The hub is comprehensive by design. Details, context, nuance, and full descriptions belong
here. Brevity and summarization happen at output time, tailored to each specific medium and
audience. The hub itself never sacrifices depth to fit a format.

### Flexibility Over Rigidity

Sections have a general structure to encourage consistency, but no field is strictly
required. Careers evolve in unexpected ways. The hub adapts to reality rather than forcing
reality to fit a schema. Empty sections are not a problem - they are placeholders for future
growth.

### Output Agnosticism

The hub does not belong to any single format or platform. It is the raw material for CVs,
cover letters, portfolio websites, LinkedIn profiles, freelance platform bios, blog author
pages, client proposals, and any other medium that requires professional self-presentation.

### Encouragement Over Bureaucracy

The hub should feel like a personal notebook, not a corporate HR system. It exists to help
you understand yourself, not to burden you with maintenance. Write what you know, leave
empty what you don't, and fill in the gaps over time.

---

## 4. Repository Structure

The system is split across two repositories to separate tooling from personal data.

### `professionalhub` (public)

The public repository contains everything that is not personal data: project documentation,
templates, workflow guides, and implementation notes. This is the system itself.

```
professionalhub/
├── .python-version            # Python version pin (managed via uv)
├── .pre-commit-config.yaml    # Pre-commit hooks (ruff lint, format, file checks)
├── pyproject.toml             # Python dependencies (managed via uv)
├── mkdocs.yml                 # MkDocs Material configuration
├── README.md                  # Friendly introduction and quick-start guide
├── CONTRIBUTING.md            # Notes on how to extend or adapt the system
├── templates/
│   └── PROFESSIONAL_HUB.md    # Blank fill-me template for the data repository
└── docs/                      # MkDocs source - rendered as the documentation site
    ├── index.md               # Documentation home page
    ├── PROJECT_CONTEXT.md     # This document - theory and scope (rarely changes)
    └── IMPLEMENTATION.md      # Tools, workflow, and output generation (changes more often)
```

### `professionaldata` (private)

The private repository contains only your personal data. It mirrors the template from
`professionalhub` but is populated with real information.

```
professionaldata/
├── PROFESSIONAL_HUB.md        # Your actual data - populated from the template
└── outputs/                   # Generated output documents (CVs, cover letters, etc.)
    ├── cv/
    ├── cover-letters/
    └── pitches/
```

---

## 5. The Hub Document - Sections

The `PROFESSIONAL_HUB.md` document is divided into 15 sections. Each section is designed to
capture a distinct category of professional information. All sections are optional at any
given time - leave them empty and return to them as needed.

### 5.1 About Me

A personal narrative describing who you are, your professional identity, values, working
style, and what drives you. This is not a formal bio - it is an honest, detailed
self-description written for your own reference. It serves as the foundation for all
external self-presentation and is the section most frequently drawn from when writing
cover letters, portfolio introductions, and profile summaries.

### 5.2 Career Titles & Positioning

A structured list of roles and job titles that accurately reflect your professional identity,
each paired with an estimated proficiency or seniority level. This section is used to
understand how you should be positioned for different opportunities and to anchor the
tailoring of your About Me and Elevator Pitches to specific contexts. For example, you may
identify simultaneously as a Data Scientist, an ML Engineer, and a Freelance AI Consultant -
each at a different level of seniority and market readiness.

### 5.3 Elevator Pitches

Pre-written positioning statements tailored to specific roles, industries, or audiences.
Each pitch is a short, self-contained narrative that answers the question "who are you and
why should I care" from a specific perspective. Pitches are derived from the About Me and
Career Titles sections and are kept ready to adapt rather than write from scratch under
pressure.

### 5.4 Education & Courses

All formal and informal learning: degrees, bootcamps, online courses, self-study programs,
workshops, and reading. The distinction between formal education and informal learning is
noted where relevant, but both belong here. Include institution, period, subject, and any
notable outcomes or projects produced.

### 5.5 Certifications & Licenses

Formally issued, accredited credentials that are distinct from general courses. Include the
issuing body, the date obtained, expiry dates where applicable, and any credential IDs or
verification links.

### 5.6 Professional Experiences

All paid professional work: employment, freelance contracts, consulting engagements, and
relevant informal roles. Each entry focuses on what was done, what was built or delivered,
what was learned, and what impact was created. For freelance work, the focus is on the
product and experience rather than client metadata. Relevant fields include: period,
employment type (employed / freelance / contract), field or industry, technologies used,
and key outcomes.

### 5.7 Projects

Personal, open-source, experimental, and notable client projects. Each project entry
describes what was built, why, how, and what the outcome was. Projects can include optional
links to related experiences, courses, or other hub sections that provide context. This
section captures work that may not appear in formal employment records but demonstrates
skill, initiative, and range.

### 5.8 Skills

A hierarchical, infinitely nestable map of your professional knowledge. Skills are organized
into categories and subcategories of your choosing. Each skill carries a self-assessed
proficiency level using the following scale:

- **Aware**: Have encountered it, understand the concept, but have no hands-on experience.
- **Familiar**: Have worked with it in limited or guided contexts.
- **Proficient**: Can use it independently and effectively in real projects.
- **Expert**: Deep knowledge, can mentor others, handle edge cases, and make architectural decisions.

Additional free-text notes can accompany any skill where the level alone is insufficient.

Each subcategory also supports a **Planned** subsection: a "greyed-out" list of skills you
intend to learn. Planned skills are not counted in assessments or used in CV generation
until they are promoted to an active level. They serve as a personal roadmap built directly
from your current skill map.

### 5.9 Languages

Spoken and written languages with proficiency levels. Use a standard scale such as A1-C2
(CEFR) or equivalent descriptors (Basic, Conversational, Fluent, Professional, Native).

### 5.10 Publications & Talks

Articles, blog posts, conference talks, podcasts, webinar appearances, guest features, and
any other published or presented content. Include title, medium, date, and a link where
available.

### 5.11 Awards & Recognition

Competition placements, professional awards, notable mentions, featured work, and any formal
recognition of your contributions or quality of work.

### 5.12 Volunteer & Extracurricular

Community involvement, open-source contributions, mentoring, side activities, and anything
that reflects your character, values, or range beyond paid work.

### 5.13 Online Presence & Links

A canonical, up-to-date list of all your professional profiles, platforms, and public
presences: GitHub, LinkedIn, personal website, portfolio, YouTube, social accounts used
professionally, and any other platform where you maintain a professional identity.

### 5.14 Availability & Preferences

Your current professional status and preferences: open to work or not, preferred contract
types (employed, freelance, contract), preferred work modes (remote, hybrid, on-site),
geographic preferences, and rate ranges. This section is private by default and is never
included in public outputs unless explicitly chosen.

### 5.15 Other / Extra

An inbox for anything that does not fit neatly into the sections above. Write freely here.
If a pattern emerges over time - repeated entries of a similar type - consider whether a
new dedicated section is warranted and update the template accordingly; you could also
submit a change by following the CONTRIBUTING.md guidelines.

---

## 6. The Output Layer

The hub is the input. Outputs are documents or content pieces generated from hub data,
filtered and reworked for a specific medium and audience.

### Output Types

| Output | Primary Hub Sections Used | Key Transformation |
|---|---|---|
| CV / Resume | Experiences, Education, Skills, Certifications, Projects | Filter by relevance, compress to 1-2 pages |
| Cover Letter | About Me, Pitches, Experiences, Projects | Narrative, targeted, personal tone |
| LinkedIn Summary | About Me, Pitches, Career Titles | Condensed, public-facing, keyword-rich |
| Portfolio / Website | About Me, Projects, Skills, Experiences, Publications | Visual, curated, audience-specific |
| Freelance Platform Bio | Pitches, Experiences, Skills, Projects | Short, outcome-focused, trust-building |
| Client Proposal / Pitch | Pitches, Experiences, Projects, Skills | Problem-solution framing, evidence-based |
| Blog Author Bio | About Me, Publications, Projects | Informal, topic-relevant |
| GitHub Profile | About Me, Skills, Projects, Online Presence | Technical, concise, developer-facing |

### The Tailoring Principle

Every output answers three questions before any content is selected:

1. **Who is the audience?** (hiring manager, client, developer community, general public)
2. **What role or context am I targeting?** (ML Engineer, freelance consultant, open source contributor)
3. **What matters most to this audience in this context?**

Content that is irrelevant to those answers is either omitted or reduced to a few or even a single line.
Content that is directly relevant is expanded and foregrounded. The hub contains everything;
the output contains only what serves the moment.

---

## 7. Future Vision: LLM + RAG Layer

This section describes a planned future capability, not part of the current MVP.

The long-term vision pairs the hub with a local, privacy-focused language model with
retrieval-augmented generation (RAG) capabilities. The model would be able to:

- Answer questions about your professional background, positioning, and skills
- Identify skill gaps relative to a specific job description or opportunity
- Generate tailored CV and cover letter drafts based on a given role
- Suggest roadmap steps from your current skill level toward a target role
- Help you understand how to position yourself for markets or industries you are exploring

Because all data stays in the private repository and the model runs locally, no personal
information leaves your machine. This layer is intentionally deferred until the hub is
well-populated and the structure is stable.

---

## 8. What This Document Is Not

- It is not an implementation guide. Tool choices and workflow details are in `IMPLEMENTATION.md`.
- It is not a template. The fillable document is `templates/PROFESSIONAL_HUB.md`.
- It is not a meant to be a public-facing document. It is written for the owner of the system and to whoever might be curious about the details.
- It is not set in stone. New sections could be added the scope might slightly changed and so on.

---

## 9. Revision Log

| Version | Date | Change |
|---|---|---|
| 1.0 | 2026-04-20 | Initial document |
