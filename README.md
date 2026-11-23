# last-cigarette — quit smoking with an AI coach

Free, and it stays free. If it helps you: [the pack you didn't buy](#the-pack-you-didnt-buy).

**Stop smoking, vaping or any nicotine with an AI coach at your side, day by day.** `last-cigarette` is a free, open, evidence-based Agent Skill for Claude, also usable as a single prompt with ChatGPT, Gemini and local models.

It turns an AI assistant into a tobacco-cessation coach: the kind of trained adviser you'd get on a good quitline, available at 6 a.m. when the coffee is half-drunk and the hand is reaching for the pack. It builds a quit plan with you, keeps the count and the clock, explains the stop-smoking medicines, talks you through cravings as they happen, and treats a slip as information, not failure.

Built from the current guidelines (NICE NG209, WHO 2024) and Cochrane reviews, and from a real quit attempt coached day by day. It is not a doctor, and it says so. It is the behavioural half of the standard of care — the half most people never get.

## What it does

- Assesses dependence (Fagerström), triggers, history, alcohol, medical context
- Builds a plan: abrupt quit or structured cut-down-to-quit with a fixed quit date
- Explains medication options at a well-informed-friend level (cytisine, varenicline, combination NRT, bupropion, e-cigarettes) and routes the decision to a pharmacist or doctor
- Disrupts triggers one by one (morning coffee, driving, after meals, work breaks, alcohol, stress, working with hands)
- Coaches through cravings in real time, in short replies that fit inside the 3–5 minutes a craving lasts
- Explains withdrawal symptoms and how long each lasts
- Handles lapses without the "might as well finish the pack" spiral, and relapses without blame
- Knows where the boundaries are: mental-health red flags, pregnancy, serious illness, medication interactions → hands off to the right professional

## What it is not

**This is not medical advice and not a medical device.** It has not been clinically validated. It is an open project, provided as is, tested so far by one person.

Not medical advice. Not a prescriber. Not a crisis service. Not a substitute for a doctor, a pharmacist, a quitline, or the people in your life. The skill is explicit about this with the user and pushes toward real-world support.

## Install

**Claude (web, desktop, phone):** download the `.skill` file from Releases (or zip this repository as a folder named `last-cigarette`) and add it under Skills in your Claude settings — skills added on the web are available in the phone app on the same account. Then just talk: "I smoke a pack a day and I want to stop." Exact steps for your plan and platform: https://support.claude.com.

**Claude Code:** `git clone https://github.com/leodavidsec/last-cigarette ~/.claude/skills/last-cigarette` (or clone into `.claude/skills/` inside a project).

**ChatGPT, Gemini, local models and other assistants:** the skill format (`SKILL.md` + reference files) is Claude's, but the content is plain markdown. `dist/last-cigarette.prompt.md` is the whole skill compiled into one file — paste it as a Custom GPT's instructions (and attach the reference files as knowledge), as a Gem's instructions, or as the system prompt of any model. Regenerate it after editing with `scripts/build_prompt.sh`.

**Which model.** This skill carries knowledge, not capability. It was developed and used in conversations with Anthropic's Claude (most recently in the Fable 5.2 configuration), and that is the only model it has been used with. Expect similar behaviour only from the most capable tier of a provider: at the time of writing, for example, Claude Fable 5.2 or Opus 5.5, or OpenAI's GPT-5.6 Sol or GPT-6 Astra. Those OpenAI models are named as examples of the tier, not as tested. With smaller or local models, replies get longer, the count and the clock get less reliable, and tone is read less well; `references/response-patterns.md` exists for them, but for something that touches health, use the best model you can.

## Who it has been tried with, and who it has not

| | State |
|---|---|
| One adult daily cigarette smoker (the author) | Used live, day by day |
| Other countries | Written guidance for when no country file exists; only Romania has a file |
| Waterpipe, smokeless tobacco, vapes, other products | Written from WHO and Cochrane sources; not yet used with anyone |
| Minors, older adults, pregnancy | Written; routes to clinicians; not yet used with anyone |
| People who fast, people who do not drink, shift workers | Written; not yet used with anyone |
| Models other than Claude | Not tested |

If you belong to one of the untested rows and try it, an issue describing what went wrong is the most useful contribution there is. Country files (`references/country/_template.md`) and reviews by clinicians are the next most useful.

## Status

Version 0.7.2. Honest state of things:

- Used live by one person so far (the author, during his own attempt, which is still in progress). That is where most of the content was tested and corrected. One person is not evidence that it works.
- It is not the first of its kind. Other public skills exist for this (a quit tracker with cravings support and a health timeline; a clinician-facing 5As counselling skill). What this one adds is depth: medication literacy taken from leaflets, scheduled reduction, bargaining, lapse scripts, a strict ledger and clock, safety routing, country files, and rules that each come from a mistake made in live use.
- Twenty-seven eval cases are written in `evals/`; they have not yet been run systematically across models.
- No clinician has reviewed it yet. Medical statements are taken from the guidelines and leaflets cited in `references/evidence-base.md`, and the cytisine section was checked against the Romanian SmPC. A review by a tobacco-cessation specialist is the next step, and offers are welcome.
- No one knows yet whether it improves quit rates. Chatbot support has early trial evidence; this particular skill has none.

## Structure

```
last-cigarette/                   # repository and skill share the name
├── SKILL.md                      # the coach: roles, tone, session flow, boundaries
├── references/
│   ├── ledger-and-clock.md       # what to track, arithmetic shown, trust repair
│   ├── response-patterns.md      # reply shapes per message type (helps smaller models)
│   ├── bargaining.md             # "not even half?", cigars, roll-ups, found tobacco
│   ├── onboarding.md             # the first day: the profile, how to ask, what you are to the person
│   ├── people-and-contexts.md    # other products, countries, ages, fasting, access, language
│   ├── psychology-toolkit.md     # which technique fits which state; what is off limits
│   ├── first-week-smoke-free.md  # quit day to day seven: counter, mornings, lapses, complaints
│   ├── new-diagnosis-new-medicines.md  # a diagnosis or new prescriptions arrive mid-attempt
│   ├── evidence-base.md          # what works, numbers, sources
│   ├── assessment.md             # Fagerström, history, trigger inventory
│   ├── reduction-to-quit.md      # scheduled smoking, medication-driven taper
│   ├── pharmacotherapy.md        # medication categories, regimens as published, interactions
│   ├── cravings-toolkit.md       # in-the-moment tools, trigger-by-trigger plans
│   ├── tricks-that-work.md       # the practical tricks advisers pass on
│   ├── withdrawal-timeline.md    # symptoms, durations, fixes
│   ├── lapse-and-relapse.md      # not-a-puff rule, lapse script, relapse
│   ├── motivation-and-identity.md
│   ├── mental-health-and-safety.md
│   ├── special-situations.md     # alcohol, weekends, partner who smokes, comorbidities
│   └── country/                  # what's actually available, by country
│       ├── romania.md
│       └── _template.md
├── templates/
│   ├── personal-plan.md
│   └── daily-log.md
├── dist/last-cigarette.prompt.md   # everything in one file, for other assistants
├── scripts/build_prompt.sh
├── evals/                        # twenty-seven test cases (Claude Code: claude plugin eval .)
└── CHANGELOG.md
```

## Contributing

All files in this repository are written in English, country files included; local medicine and programme names stay as printed. The coach itself answers in the language of the person it is talking to.

- **Country files** are the most useful contribution: copy `references/country/_template.md`, fill in what is really available and what it costs where you live, date it, and open a PR.
- Corrections to the evidence base with a source are always welcome. Reviews update; this should too.
- Translations of `SKILL.md` can live alongside as `SKILL.<lang>.md`.
- Please don't add content that prescribes doses, promises outcomes, or removes safety boundaries.

## Evidence

See `references/evidence-base.md` for the full list. Headline sources: NICE NG209 (2021, updated 2025); WHO clinical treatment guideline for tobacco cessation (2024); Cochrane reviews — Lindson 2023 (pharmacotherapies and e-cigarettes), Hartmann-Boyce 2021 (behavioural interventions), Taylor 2021 (mental health), Lindson 2019 (motivational interviewing); NCSCT briefing on the "not a puff" rule; Bricker 2024 (QuitBot chatbot RCT).

## The pack you didn't buy

I built `last-cigarette` while stopping after thirty years and two packs a day. It is free, and it will stay free.

If it helps you through a craving, a hard evening, or all the way out, and you feel like saying thanks, I would be grateful for the price of one pack you never bought. One is plenty.

[![Send a pack's worth on Revolut](https://img.shields.io/badge/Send%20a%20pack%27s%20worth-Revolut-191C1F?style=for-the-badge&logo=revolut&logoColor=white)](https://revolut.me/alexan9wr)

Every other pack you never buy is money that stays in your pocket, and it comes with the rest of what you get back: your breath, your mornings, your years.

If you can't spare it, you owe nothing. Your health was the point of all this. Stay quit.

## License

MIT — see `LICENSE`.
