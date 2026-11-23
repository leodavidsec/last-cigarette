# Changelog

## 0.10.0 — 2026-11-23

Removed
- The country files (`references/country/`): the nine added in 0.9.0, the first one and the template. A list of countries goes out of date, covers a few places out of two hundred, and lengthens the single-file prompt for everyone. What exists where a person lives is now found for that person and kept in their plan.

Changed
- The local check names three sources that work for any country (WHO's tobacco country profile, WHO's directory of quit lines, Find A Helpline) and says how to treat them: as a starting point, with the pharmacist settling any disagreement about a medicine.

## 0.9.0 — 2026-11-23

Added
- The local check. On the first day the coach finds out what exists where the person lives (the quitline, which medicines are sold and under what conditions, who pays, the emergency number and a crisis line), from the country file or from official sources, and gives the source and the date. It is described in `references/onboarding.md` and `SKILL.md`, and the plan template has a "Where I live" block for the result.
- Nine country files, written from official sources on 23 November 2026 and not yet checked by anyone who lives there: Bulgaria, Germany, Hungary, the Netherlands, Poland, Russia, Ukraine, the United Kingdom and the United States. Each lists its sources.

Changed
- `README.md`: the status table and the contributing note say which country files exist and how far each has been checked.

## 0.8.4 — 2026-11-23

Changed
- `README.md`: says first what a person gets; a "Try Last Cigarette" list with a link for each assistant and what has been checked for it; the sample exchanges moved up; the comparison with a human adviser reworded so that it does not suggest equal effectiveness; a gentler line for passing the page on.
- The length of a craving is now given as usual, not certain ("usually 3–5 minutes"), in `SKILL.md`, three reference files and the README. Sources added to `references/evidence-base.md` (HSE, NHS).
- `INSTALL.md`: the procedure for AI agents now checks first whether the skill is already installed, covers apps where the user has to upload it, reports exactly what was verified, and keeps installation separate from logs and reminders. The single-file prompt is attached rather than pasted.

## 0.8.3 — 2026-11-23

Changed
- `README.md` rewritten: a dedication, what people who stopped say they got back, why the project exists, two sample exchanges, an install table, questions people ask, and a new closing for the donation section. The sections on what it is not and on its honest status are kept.
- The note on which model to use moved from the README to `INSTALL.md`.

Added
- `assets/banner.svg` and `assets/social-preview.png` (the image shown when the link is shared).
- `references/evidence-base.md`: Doll et al. 2004 (years of life gained by stopping), the CDC cessation figures for 2022, and the Oxford interview collection the README draws on.

## 0.8.2 — 2026-11-23

Added
- `INSTALL.md`: sections for the Gemini app, Gemini Enterprise, Gemini CLI, Grok Build and the Grok app, written from each vendor's documentation and marked as not yet tried; a note that `~/.agents/skills/` serves Codex, Gemini CLI and Grok Build with one clone.

## 0.8.1 — 2026-11-23

Added
- `dist/last-cigarette-chatgpt.zip`: the same skill with `SKILL.md` at the root of the archive. ChatGPT rejects an archive that wraps the skill in a folder; Claude requires that folder. `scripts/package.sh` now builds both.

## 0.8.0 — 2026-11-23

Added
- `INSTALL.md`: exact steps for Claude, Claude Code, ChatGPT, Codex and other assistants, and a procedure for AI agents installing the skill on someone's behalf.
- `agents/openai.yaml`: display metadata for ChatGPT and Codex.
- `dist/last-cigarette.zip`, built by `scripts/package.sh`: the skill folder alone, for uploads.

Changed
- The skill description is shorter (under 200 characters) so that it fits every host's limits.

## 0.7.2 — 2026-11-23

Removed
- The worked example, and every illustration in the reference files and eval cases that was drawn from one person's life. Examples are now invented and neutral.

## 0.7.1 — 2026-11-23

Added
- The coach never brings up donations or payment in a conversation; the support link lives only on the project page.

## 0.7.0 — 2026-11-23

Changed
- The skill is now called `last-cigarette`, the same as the repository (it was `quit-smoking-coach`). If you installed the old name, remove it and install `last-cigarette`.
- The single-file build is now `dist/last-cigarette.prompt.md`.

## 0.6.1 — 2026-11-22

Changed
- Every file is in English. The coach still answers in the person's language.

## 0.6.0 — 2026-11-22

Added
- `references/onboarding.md`, `references/people-and-contexts.md`, `references/psychology-toolkit.md`.
- SKILL.md: "The model running this"; the ally stance; no inferences from name, language or country; alcohol asked about, not assumed.
- README: "not medical advice, not a medical device"; which models; who it has and has not been tried with.
- Eight eval cases with different ages, countries, products and practices.

## 0.5.0 — 2026-11-21

Added
- `references/new-diagnosis-new-medicines.md`.
- Ledger: the morning dose table and alarms, the day's budget, "the leaflet is the schedule", unknown doses, stating the record instead of asking.
- First week: a lapse with a real cigarette, decisions made right after a lapse, tasks that keep not getting done.
- Bargaining: the nicotine-free vape; "it's the smoke, not the nicotine".
- Reply pattern MORNING; consistency checks for documents.

## 0.4.0 — 2026-11-17

Added
- `references/first-week-smoke-free.md`.
- Ledger rules: check the clock at every message; "now" means the time of the person's message; an intention is not an event; arithmetic done with a tool.
- Reply patterns NO-SLOT, DAY-PLAN and DOCUMENT.
- Cytisine course logistics; more on withdrawal symptoms.

## 0.3.x — 2026-11-10

Added
- `references/ledger-and-clock.md`, `references/bargaining.md`, `references/tricks-that-work.md`, `references/response-patterns.md`.
- The rule "everything specific comes from this person".
- The single-file build for other assistants; the first eval cases.

## 0.1.0 — 2026-11-09

First version: SKILL.md, the core reference files, templates, the Romania country file.
