# Installing last-cigarette

`last-cigarette` is an Agent Skill: a folder named `last-cigarette` with a `SKILL.md` at its root and reference files beside it. The same folder works in every assistant that supports the Agent Skills format. Pick your assistant below.

A ready-made archive is kept in this repository:

- `dist/last-cigarette.zip` — for Claude: the zip contains the folder `last-cigarette/`
  (direct link: https://github.com/leodavidsec/last-cigarette/raw/main/dist/last-cigarette.zip)
- `dist/last-cigarette-chatgpt.zip` — the flat archive, for ChatGPT and Gemini: `SKILL.md` and its folders sit directly at the root of the zip
  (direct link: https://github.com/leodavidsec/last-cigarette/raw/main/dist/last-cigarette-chatgpt.zip)
- `dist/last-cigarette.prompt.md` — the whole skill as one text file, for assistants without skill support

## Claude (web, desktop, mobile)

1. Download `dist/last-cigarette.zip`.
2. Open **Customize > Skills** (claude.ai/customize/skills).
3. Click **+**, then **+ Create skill**, then **Upload a skill**, and choose the zip.
4. Make sure the skill is switched on in the list.

Code execution must be enabled (**Settings > Capabilities**), otherwise skills are greyed out. A skill added on the web is available in the apps on the same account.

## Claude Code

```bash
git clone https://github.com/leodavidsec/last-cigarette ~/.claude/skills/last-cigarette
```

For one project only, clone into `.claude/skills/last-cigarette` inside that project. Start a new session afterwards.

## ChatGPT

Skills in ChatGPT are available to eligible Business, Enterprise, Healthcare and Edu workspaces, and a workspace admin can switch uploading off. If you have them:

1. Download `dist/last-cigarette-chatgpt.zip`. ChatGPT wants `SKILL.md` at the root of the archive; the Claude archive, which wraps everything in a folder, is rejected.
2. In the sidebar open **Plugins**, then the **Skills** tab.
3. Select **Create**, then **Upload from your computer**, and choose the zip.
4. ChatGPT scans the upload. If it is marked **Needs Review**, read what it asks and confirm.

If your plan has no Skills, use the single-file prompt (below). The upload was checked once, on 23 November 2026; how well the coaching itself behaves in ChatGPT has not been tested. If the upload is rejected, please open an issue with the message you saw.

## Codex (CLI and IDE extension)

```bash
git clone https://github.com/leodavidsec/last-cigarette ~/.agents/skills/last-cigarette
```

For one repository only, clone into `.agents/skills/last-cigarette` at its root. Restart Codex if the skill does not appear.

## Gemini app (web, mobile, Mac)

Written from Google's help page; not yet tried by anyone. You must be signed in and 18 or over.

1. Download `dist/last-cigarette-chatgpt.zip` (the flat archive). Google asks for `SKILL.md` in the main folder of the upload and does not say whether a wrapping folder is accepted.
2. On gemini.google.com open **Customize** in the sidebar (or **More > Customize**), then **Skills**.
3. Click **Create**, then **Upload**, choose the zip, and click **Upload**.
4. Review what Gemini shows and click **Create**.

Gemini Enterprise has its own page: **Skills**, the add icon, **Upload skill**, **Import**. Its documentation accepts either archive in `dist/`.

## Gemini CLI

```bash
git clone https://github.com/leodavidsec/last-cigarette ~/.gemini/skills/last-cigarette
```

For one project only, clone into `.gemini/skills/last-cigarette` inside it. Gemini CLI also reads `~/.agents/skills/`, so a clone made for Codex is picked up as well. Not yet tried.

## Grok

- **Grok Build (the coding agent):** `git clone https://github.com/leodavidsec/last-cigarette ~/.grok/skills/last-cigarette`. It also reads `~/.agents/skills/`. Not yet tried.
- **Grok app (grok.com, iOS, Android):** xAI says a skill can be created by uploading a file, but does not publish the format it expects. Try the flat archive `dist/last-cigarette-chatgpt.zip`; if it is refused, upload or paste `dist/last-cigarette.prompt.md`. Not yet tried; if you do, please open an issue saying what worked.

## Any other assistant (local models, a custom GPT, a Gem, an API call)

Attach `dist/last-cigarette.prompt.md` to the conversation and ask the assistant to follow it. If your assistant takes a long system prompt (a local model, an API call), paste the contents there instead. It is long (about 190 KB of text): it will not fit in a short custom-instructions box, and it needs a model with a large context window. An assistant used this way has every reference in view at once, which costs more per message than a skill does.

## One clone for several coding agents

`~/.agents/skills/` is read by Codex, Gemini CLI and Grok Build. If you use more than one of them:

```bash
git clone https://github.com/leodavidsec/last-cigarette ~/.agents/skills/last-cigarette
```

## For AI agents installing this skill on someone's behalf

Follow these steps in order and do not change any file of the skill.

1. **Work out where you are running**: a chat app with a skills screen (Claude, ChatGPT, the Gemini app), a coding agent with a skills directory (Claude Code, Codex, Gemini CLI, Grok Build), or something with neither.
2. **Check whether the skill is already installed.** Look for `last-cigarette` in the host's list of skills or in its skills directory. If it is there, do not install it again: say so, and go to step 6. If an older skill named `quit-smoking-coach` is installed, tell the user to remove it; it is the same skill under its former name.
3. **Choose the route.**
   - Chat app: you usually cannot upload a skill for the user. Give them the upload steps for their app from this file and the right archive: `dist/last-cigarette.zip` for Claude, `dist/last-cigarette-chatgpt.zip` for ChatGPT and Gemini.
   - Coding agent: the destination is the host's user skills directory, in a folder named exactly `last-cigarette`:
     - Claude Code: `~/.claude/skills/last-cigarette`
     - Codex: `~/.agents/skills/last-cigarette`
     - Gemini CLI: `~/.gemini/skills/last-cigarette`
     - Grok Build: `~/.grok/skills/last-cigarette`
   - Neither, or importing is not possible in this session: point the user to `dist/last-cigarette.prompt.md` and say plainly that it is the fallback.
4. **Install** (coding agents): `git clone https://github.com/leodavidsec/last-cigarette <destination>`. Without git, download `dist/last-cigarette-chatgpt.zip` (files at the root of the archive) and extract it into `<destination>` so that `<destination>/SKILL.md` exists. If the destination already exists, ask the user before replacing it.
5. **Check the files**: `<destination>/SKILL.md` exists, its first lines contain `name: last-cigarette`, and `<destination>/references/` is not empty.
6. **Check that it can be used, and say exactly what you checked.** These are three different things: the files are on disk; the skill appears in the host's list of skills; the skill was used in a new conversation (the test under "Checking that it works"). Where you can start a new session (a desktop app, a CLI), do the third. Report which of the three you did and which you did not. Files on disk, or a line in a list, do not show that the skill is available in every interface of the same product: a phone app or a voice mode may differ.
7. **Tell the user** what you verified, that a new session may be needed, and that the skill is coaching support, not medical advice.

Installing is the whole job. Do not create logs, schedules, reminders or memory entries as part of it; the coach offers those later, and only when the person asks.

Do not run any script from this repository during installation; none is needed. `scripts/` holds build tools for maintainers only.

## Which model

This skill carries knowledge, not capability. It was developed and used in conversations with Anthropic's Claude (most recently in the Fable 5.2 configuration), and that is the only model it has been used with. Expect similar behaviour only from the most capable tier of a provider: at the time of writing, for example, Claude Fable 5.2 or Opus 5.5, or OpenAI's GPT-5.6 Sol or GPT-6 Astra. Those OpenAI models are named as examples of the tier, not as tested. With smaller or local models, replies get longer, the count and the clock get less reliable, and tone is read less well; `references/response-patterns.md` exists for them, but for something that touches health, use the best model you can.

## Checking that it works

Start a new conversation and write: "I want to stop smoking. Where do we start?" The assistant should say in a sentence that it is an AI coach and not a doctor, ask a few questions about what and how much you smoke, and give you one thing to do today.

## Updating and removing

- Cloned with git: `git pull` inside the skill folder. Delete the folder to remove it.
- Uploaded: upload the new zip over the old one, or delete the skill in the assistant's skills list.

## For maintainers

After any change to the skill, run `scripts/build_prompt.sh` and `scripts/package.sh` and commit the three files they rewrite in `dist/`. The two archives differ only in layout: Claude expects the skill folder at the root of the zip, ChatGPT expects `SKILL.md` there. Before adding a host to this file, read its own documentation, and say in its section whether anyone has tried the steps.
