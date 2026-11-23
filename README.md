<p align="center">
  <img src="assets/banner.svg" width="620" alt="Twenty small circles in a row, like a pack of twenty. The last one is lit.">
</p>

<h1 align="center">last-cigarette — quit smoking with an AI coach</h1>

<p align="center"><em>For everyone who has said “this is my last one” and meant it every time.</em></p>

<p align="center">
  <a href="https://agentskills.io"><img alt="Agent Skill, an open standard" src="https://img.shields.io/badge/Agent%20Skill-open%20standard-e8763a?labelColor=1c1917"></a>
  <a href="INSTALL.md"><img alt="Installs in Claude, ChatGPT, Gemini, Codex and Grok" src="https://img.shields.io/badge/installs%20in-Claude%20%C2%B7%20ChatGPT%20%C2%B7%20Gemini%20%C2%B7%20Codex%20%C2%B7%20Grok-57534e?labelColor=1c1917"></a>
  <a href="references/evidence-base.md"><img alt="Evidence: NICE, WHO, Cochrane" src="https://img.shields.io/badge/evidence-NICE%20%C2%B7%20WHO%20%C2%B7%20Cochrane-57534e?labelColor=1c1917"></a>
  <a href="LICENSE"><img alt="MIT licence" src="https://img.shields.io/badge/licence-MIT-57534e?labelColor=1c1917"></a>
</p>

<p align="center">
  <a href="#try-last-cigarette"><b>Try it</b></a> ·
  <a href="#what-a-conversation-looks-like">What it looks like</a> ·
  <a href="#what-you-get-back">What you get back</a> ·
  <a href="#what-it-does">What it does</a> ·
  <a href="#honest-status">Honest status</a> ·
  <a href="#install">Install</a>
</p>

**Stop smoking, vaping or any nicotine with an AI coach at your side, day by day.** You get three things: a quit plan built around your own day, someone to write to the moment a craving hits, and a way back to the plan after a cigarette, without shame.

`last-cigarette` is a free, open [Agent Skill](https://agentskills.io) that runs inside the AI assistant you already use, built from the current stop-smoking guidelines (NICE, WHO, Cochrane). It gives the kind of support a stop-smoking adviser gives, at 6 a.m. when your first coffee is half finished and your hand is reaching for the pack: it keeps the count and the clock, explains the medicines from their leaflets, and treats a slip as information, not failure.

It is not a doctor, and it says so. No one has yet measured whether it helps as much as a human adviser does.

## Try Last Cigarette

- **[Claude](INSTALL.md#claude-web-desktop-mobile)**: upload [`last-cigarette.zip`](https://github.com/leodavidsec/last-cigarette/raw/main/dist/last-cigarette.zip) as a skill. *Used daily; this is where the coach was developed.*
- **[ChatGPT](INSTALL.md#chatgpt)**: upload [`last-cigarette-chatgpt.zip`](https://github.com/leodavidsec/last-cigarette/raw/main/dist/last-cigarette-chatgpt.zip) as a skill. Needs a Business, Enterprise, Healthcare or Edu workspace that has Skills. *Upload checked once; the coaching itself not yet tried there.*
- **[Gemini](INSTALL.md#gemini-app-web-mobile-mac)**: upload the same [`last-cigarette-chatgpt.zip`](https://github.com/leodavidsec/last-cigarette/raw/main/dist/last-cigarette-chatgpt.zip) as a skill. *Written from Google's documentation; not yet tried.*
- **[Any other AI](INSTALL.md#any-other-assistant-local-models-a-custom-gpt-a-gem-an-api-call)**: attach [the single-file prompt](dist/last-cigarette.prompt.md) to the conversation and ask the assistant to follow it. *Not yet tried.*

Coding agents (Claude Code, Codex, Gemini CLI, Grok Build) are under [Install](#install). **AI agents** installing this for someone: follow [the procedure in INSTALL.md](INSTALL.md#for-ai-agents-installing-this-skill-on-someones-behalf).

Then start a new conversation and write: *"I want to stop smoking. Where do we start?"*

Free, and it stays free. If it helps you: [the pack you didn't buy](#the-pack-you-didnt-buy).

## What a conversation looks like

> **You, 07:20:** day 4. halfway through my coffee, hands shaking, i want one so bad
>
> **Coach:** 07:20. It's the coffee one, I know. Put the cup down and run cold water over your hands for two minutes. A craving like this usually passes in three to five minutes. You said it yourself: the stairs, without stopping.

> **You:** I smoked one last night. Nine days, gone.
>
> **Coach:** Thank you for telling me; most people hide it. One cigarette after nine days is a lapse, not a relapse, and your nine days are still real. What was happening right before?

<sub>Illustrative exchanges, invented to show the shape of a reply. The coach answers in the language you write in.</sub>

## What you get back

People who have stopped mostly talk about small things. Reaching the top of a steep hill and noticing they never ran out of breath. Cold air that no longer hurts. Food that has its taste back. Smelling their own perfume. Holding a note longer when they sing. A film watched to the end, a dinner nobody had to step away from. And, years later, still being glad that they do not *have to* smoke.

The big things arrive quietly. A body that is yours again. Whole days, no longer cut into pieces by the next cigarette. And time: stop at forty and you get back, on average, about nine years of life. At fifty, about six. Even at sixty, about three. Those years are not only yours. They belong just as much to your family, and to everyone who wants you around.

That is what this project is for. It is not about willpower, and never about shame. It is about a person getting their life back, and not having to do it alone.

<sub>The small things are taken from interviews with people who stopped, published by the University of Oxford ([Health Experience Insights](https://hexi.ox.ac.uk/giving-smoking/effects-of-not-smoking)). The years are from fifty years of following British doctors ([Doll et al., BMJ 2004](https://pmc.ncbi.nlm.nih.gov/articles/PMC437139)), compared with carrying on smoking.</sub>

## What it does

- Asks what, how much and how soon after waking you smoke, what ended your last attempts, and what you like about it
- Builds a plan with you: an abrupt stop, or a structured cut-down with a fixed quit date
- Explains the medicines the way a well-informed friend would (cytisine, varenicline, nicotine replacement, bupropion, e-cigarettes), from the leaflet, and sends the decision to a pharmacist or doctor
- Takes triggers apart one by one: the morning coffee, driving, after meals, work breaks, alcohol, stress
- Stays with you through a craving, in replies short enough to read while it lasts (usually three to five minutes)
- Keeps the count and the clock, and shows its arithmetic so you can check it
- Explains withdrawal symptoms and how long each one lasts
- Finds out what exists where you live: the quitline, which medicines are sold and how, who pays, and who to call in a crisis
- Handles a slip without the "might as well finish the pack" spiral, and a relapse without blame
- Knows where it stops: mental-health red flags, pregnancy, serious illness and drug interactions go to the right professional

## Why it exists

Two in three adults who smoke want to stop. In a year about half try, and fewer than one in ten succeed. Most of those who try use neither counselling nor medicine (United States, 2022: [CDC](https://www.cdc.gov/mmwr/volumes/73/wr/mm7329a1.htm)).

Medicine and support together roughly double to triple the chance of stopping, compared with willpower alone ([sources](references/evidence-base.md)). The support is the half most people never get, and it is rarely there at the moment the hand reaches for the pack.

This project puts that half inside the AI assistant a person already has: at any hour, in their own language, for nothing. Whether it helps as much as a human adviser does is not known yet, and the [honest status](#honest-status) below says so.

## Install

| Your assistant | How |
|---|---|
| Claude (web, desktop, mobile) | Upload [`dist/last-cigarette.zip`](https://github.com/leodavidsec/last-cigarette/raw/main/dist/last-cigarette.zip) under Customize > Skills |
| ChatGPT, Gemini app | Upload [`dist/last-cigarette-chatgpt.zip`](https://github.com/leodavidsec/last-cigarette/raw/main/dist/last-cigarette-chatgpt.zip) |
| Claude Code, Codex, Gemini CLI, Grok Build | `git clone` this repository into the agent's skills folder |
| Anything else | Attach [`dist/last-cigarette.prompt.md`](dist/last-cigarette.prompt.md) and ask the assistant to follow it |

Exact steps for each, and which of them have been tried, are in [INSTALL.md](INSTALL.md). Or hand the job to your agent:

```
Install the last-cigarette skill from github.com/leodavidsec/last-cigarette
and follow its INSTALL.md.
```

The procedure an agent should follow is [written out in INSTALL.md](INSTALL.md#for-ai-agents-installing-this-skill-on-someones-behalf).

Use the most capable model you have. The skill carries knowledge, not capability: it was developed with Anthropic's Claude, and that is the only model it has been used with. Smaller models keep the count and read the tone less well. More in [INSTALL.md](INSTALL.md#which-model).

## What it is not

**This is not medical advice and not a medical device.** It has not been clinically validated. It is an open project, provided as is.

It is not a prescriber, not a crisis service, and not a substitute for a doctor, a pharmacist, a quitline, or the people in your life. The coach says this to the person it is talking to, and keeps pointing them towards real-world support.

## Honest status

Version 0.9.0.

| | State |
|---|---|
| One adult daily cigarette smoker (the author) | Used live, day by day; the attempt is still in progress |
| Countries | Romania checked in live use. Nine more files (United Kingdom, United States, Germany, Netherlands, Hungary, Poland, Russia, Ukraine, Bulgaria) written from official sources and not yet checked by anyone who lives there. Everywhere else the coach looks things up at official sources, or says that it cannot |
| Waterpipe, smokeless tobacco, vapes, other products | Written from WHO and Cochrane sources; not yet used with anyone |
| Minors, older adults, pregnancy | Written; routes to clinicians; not yet used with anyone |
| People who fast, people who do not drink, shift workers | Written; not yet used with anyone |
| Models other than Claude | Upload into ChatGPT checked once. Steps for Gemini and Grok are written from their documentation and have not been tried. The coaching itself has not been tested outside Claude |

- One person is not evidence that it works. No one knows yet whether this skill improves quit rates; chatbot support in general has early trial evidence.
- No clinician has reviewed it yet. Medical statements come from the guidelines and leaflets cited in `references/evidence-base.md`. A review by a tobacco-cessation specialist is the next step, and offers are welcome.
- Twenty-seven test cases are written in `evals/`; they have not yet been run across models.
- It is not the first of its kind. Other public skills exist (a quit tracker with a health timeline; a clinician-facing counselling skill). What this one adds is depth: medicines read from their leaflets, scheduled reduction, bargaining, lapse scripts, a strict ledger and clock, safety routing, country files, and rules that each come from a mistake made in live use.

If you belong to one of the untested rows and try it, an issue describing what went wrong is the most useful contribution there is.

## Questions people ask

**Is it really free?** Yes. MIT licence, nothing to sign up for beyond the assistant you already use.

**What happens to what I tell it?** The skill is a set of text files: no code runs, and nothing is sent anywhere. Your conversation is handled by the assistant you use, under that assistant's privacy terms.

**Do I need medicine to use it?** No. The coach will tell you what the evidence says about medicines, because they change the odds, and leave the decision to you and a pharmacist or doctor.

**Does it cover vaping, heated tobacco, smokeless tobacco, waterpipe?** Yes, written from WHO and Cochrane sources. Those parts have not yet been used with anyone.

**What if I slip?** It thanks you for saying so, finds the trigger with you, and plans for the next time. No lecture.

## Pass it on

Almost everyone knows someone who has said “this is my last one” and meant it. If you do, send them this page.

If you want the next person to find it more easily, star the repository.

## Contributing

All files in this repository are written in English, country files included; local medicine and programme names stay as printed. The coach itself answers in the language of the person it is talking to.

- **Country files** are the most useful contribution. Check one of the existing files against what is true where you live, or copy `references/country/_template.md`, fill in what is really available and what it costs, date it, and open a pull request.
- **Reviews by clinicians**, and corrections to the evidence base with a source, are always welcome.
- Please don't add content that prescribes doses, promises outcomes, or removes safety boundaries.

## Evidence

The full list is in `references/evidence-base.md`. Headline sources: NICE NG209 (2021, updated 2025); WHO clinical treatment guideline for tobacco cessation (2024); Cochrane reviews — Lindson 2023 (pharmacotherapies and e-cigarettes), Hartmann-Boyce 2021 (behavioural interventions), Taylor 2021 (mental health), Lindson 2019 (motivational interviewing); NCSCT briefing on the "not a puff" rule; Bricker 2024 (QuitBot chatbot RCT).

<details>
<summary>What is in the repository</summary>

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
│       ├── romania.md            # checked in live use
│       ├── bulgaria.md, germany.md, hungary.md, netherlands.md, poland.md, russia.md,
│       │   ukraine.md, united-kingdom.md, united-states.md   # from official sources
│       └── _template.md
├── templates/
│   ├── personal-plan.md
│   └── daily-log.md
├── INSTALL.md                    # install steps per assistant, and for AI agents
├── agents/openai.yaml            # display metadata for ChatGPT and Codex
├── assets/                       # the banner above, and the image shown when the link is shared
├── dist/last-cigarette.zip       # upload archive for Claude (skill folder at the root)
├── dist/last-cigarette-chatgpt.zip  # upload archive for ChatGPT and Gemini (SKILL.md at the root)
├── dist/last-cigarette.prompt.md # everything in one file, for other assistants
├── scripts/                      # build tools for maintainers
├── evals/                        # twenty-seven test cases
└── CHANGELOG.md
```

</details>

## The pack you didn't buy

I built `last-cigarette` while stopping after thirty years and two packs a day. It is free, and it will stay free.

Most of what stopping gives back has no price. Breath for the stairs. The taste of food. Mornings without the cough. Days that belong to you. And time with your family and the people you love: the evenings you stay for, the moments you would have missed, the years you were not going to have.

The packs you never buy are the one part with a price on it, and that money stays in your pocket. If `last-cigarette` helps you through a craving, a hard evening, or all the way out, and you feel like saying thanks, I would be grateful for the price of one pack you never bought. One is plenty.

[![Send a pack's worth on Revolut](https://img.shields.io/badge/Send%20a%20pack%27s%20worth-Revolut-191C1F?style=for-the-badge&logo=revolut&logoColor=white)](https://revolut.me/alexan9wr)

If you can't spare it, you owe nothing. You were the point of all this. Stay free.

## License

MIT — see `LICENSE`.
