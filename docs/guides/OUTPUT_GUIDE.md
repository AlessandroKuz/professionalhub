# Output Guide

This guide provides ready-to-use prompt templates for generating tailored professional
outputs from your `PROFESSIONAL_HUB.md`. Each prompt is designed to be pasted directly
into an LLM of your choice with your hub content attached.

> **How to use these prompts:**

> 1. Open your `PROFESSIONAL_HUB.md`
> 2. Copy the relevant sections (or the full document for best results)
> 3. Open your LLM of choice (local or cloud)
> 4. Paste the prompt, then paste your hub content below it
> 5. Review the output critically - edit, adjust, and make it yours before using it

> **A reminder on privacy:** if you are using a cloud LLM (ChatGPT, Claude, Gemini, etc.)
> be mindful of what personal data you are sharing. For sensitive information such as
> salary expectations, client names, or personal contact details, either redact them
> before pasting or use a local model instead.

---

## CV / Resume

Use this prompt when applying for a specific role and you need a tailored CV that
highlights the most relevant parts of your background.

**When to use:** job applications, recruiter outreach, headhunter submissions.

**Prompt:**

```markdown
I am going to give you my complete professional hub document - a comprehensive record
of my professional identity, experiences, skills, education, and projects.

Your task is to generate a tailored CV for the following role and context:

- **Role / Job Title:** [paste job title here]
- **Company or context:** [paste company name or brief description here]
- **Job description or requirements:** [paste job description here, or describe the
  type of role if no specific description is available]

Instructions:

- Select only the experiences, skills, projects, and education that are directly
  relevant to this role. Omit or briefly mention anything that is not.
- Lead with impact and outcomes, not job descriptions. Use numbers and specifics
  where the hub provides them.
- Keep the tone professional and direct. Match the apparent culture of the company
  based on the job description.
- Format the output as a clean Markdown document structured as a CV, with clear
  sections for: Summary, Experience, Skills, Education, and Projects (if relevant).
- Keep it to a maximum of two pages worth of content. If you need to cut something,
  cut the least relevant items first and flag what you removed.
- Do not invent or embellish anything. If a detail is not in the hub, do not add it.

Here is my professional hub:

[paste your PROFESSIONAL_HUB.md content here]
```

**After generation:** read the output carefully. Check that:

- The emphasis matches what actually matters for this role
- Nothing was invented or exaggerated
- The summary sounds like you, not a generic candidate
- The skills section reflects your honest proficiency levels

Edit freely before using.

---

## Cover Letter

Use this prompt when you need a cover letter that connects your background to a
specific role and company. A good cover letter is not a summary of your CV - it is
a targeted argument for why you are the right person for this specific opportunity.

**When to use:** job applications, cold outreach to companies, speculative applications.

**Prompt:**

```markdown
I am going to give you my complete professional hub document - a comprehensive record
of my professional identity, experiences, skills, education, and projects.

Your task is to write a tailored cover letter for the following role and context:

- **Role / Job Title:** [paste job title here]
- **Company:** [paste company name here]
- **Job description or requirements:** [paste job description here]
- **Anything specific about the company I want to reference:** [optional: paste a note
  about why this company, a specific project they are working on, a value they hold,
  or anything else worth acknowledging]

Instructions:

- The letter should be 3 to 4 short paragraphs. No filler, no fluff.
- Opening: connect directly to the role and why I am interested. Avoid generic openers
  like "I am writing to apply for...". Start with something specific and direct.
- Middle: draw a clear line between 2 to 3 specific experiences or projects from my hub
  and the requirements of this role. Focus on outcomes and relevance.
- Closing: a confident, direct close. No groveling. Express genuine interest and
  propose a next step.
- Tone: match the apparent culture of the company. A startup cover letter reads
  differently from one for a large enterprise.
- Write in first person. Sound like a person, not a template.
- Do not invent or embellish anything. If a detail is not in the hub, do not add it.

Here is my professional hub:

[paste your PROFESSIONAL_HUB.md content here]
```

**After generation:** read it out loud. Ask yourself:

- Does this sound like something I would actually say?
- Is the connection between my background and this role clear and specific?
- Is the opening strong enough to keep a recruiter reading?
- Does the closing feel confident?

Rewrite any sentence that sounds like it came from a template.

---

## Tips for Better Outputs

**Be specific in the role context.** The more detail you give about the role and company,
the more the LLM can filter and emphasize the right parts of your hub. A vague job title
produces a vague CV.

**Iterate.** The first output is a draft. Ask the LLM to revise specific sections,
adjust the tone, cut content, or emphasize different experiences. Treat it as a
collaborative editing session, not a one-shot generation.

**Check for hallucinations.** LLMs can occasionally add plausible-sounding details that
are not in your hub. Read every output against your hub and remove anything you did not
actually do or achieve.

**Save good outputs.** When you generate a CV or cover letter you are happy with, save
it in `outputs/cv/` or `outputs/cover-letters/` in your `professionaldata` repository
with a filename that identifies the role and date. You will thank yourself later.

> *For example*: `CV_GOOGLE_2026-06-27.pdf` in format `<doctype>_<company>_<yyyy-mm-dd>.<file_extension>`
