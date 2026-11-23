# Changelog

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
