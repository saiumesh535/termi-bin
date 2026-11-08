# Termi

> Autocomplete that stays in the prompt.

[![Website](https://img.shields.io/badge/website-termi.saiumesh.dev-teal.svg)](https://termi.saiumesh.dev)
[![macOS](https://img.shields.io/badge/macOS-13+-blue.svg)](https://www.apple.com/macos/)
[![Linux](https://img.shields.io/badge/Linux-x86__64%20%7C%20aarch64-yellow.svg)](https://termi.saiumesh.dev/#install-linux)
[![Zsh](https://img.shields.io/badge/shell-Zsh-green.svg)](https://www.zsh.org/)

**Termi** is Fig-style autocomplete for **Zsh on macOS and Linux**. Suggestions appear as you type — the command name itself, CLI specs, paths, and package scripts — without leaving the terminal. Local-first: a Rust completion daemon everywhere; a Swift menu bar app with a floating panel on macOS; a plain-text prompt menu on Linux. No cloud, no account.

**Website:** [termi.saiumesh.dev](https://termi.saiumesh.dev)

This repository hosts **public binaries, the Sparkle appcast, and the Homebrew cask**. Source stays private.

---

## Features

- **Command names** — Type `g` and the popup offers `git`, other commands on your PATH, Zsh builtins, and your aliases. The suggestion appears on the first word, before Tab.
- **macOS floating panel** — Native overlay in standalone Mac terminals.
- **Linux text menu** — Same engine, headless `zle -M` menu under the prompt.
- **CLI specs** — Bundled completion trees for git, npm, docker, kubectl, and hundreds more.
- **Package scripts** — `npm run`, `yarn`, `bun`, and bare `pnpm` scripts from the `package.json` in the project you’re in.
- **Filesystem paths** — Complete directories and files when you `cd` or open paths.
- **Companion app (macOS)** — Home, Autocomplete, Integrations, Doctor, App, and About in a native SwiftUI window.
- **Doctor** — Daemon, hook, and setup status (`termi doctor` on both platforms; Accessibility on macOS).
- **Privacy first** — Everything runs on your machine. No account, no telemetry cloud.
- **Settings & updates (macOS)** — Open at login, light/dark/system theme, and Sparkle in-app updates from this repo’s releases.

---

## Supported terminals

Works in any real Zsh pty on **macOS and Linux**.

- **macOS:** iTerm2, Terminal.app, Ghostty, kitty, WezTerm, Alacritty, Hyper, Rio, Tabby, Contour, …
- **Linux:** Kitty, Alacritty, WezTerm, Ghostty, GNOME Terminal, Konsole, tmux, SSH sessions, …

IDE embedded terminals and Warp are unsupported.

---

## System requirements

**macOS**

- macOS 13 or later
- Zsh + a supported standalone terminal
- Apple Silicon or Intel
- Accessibility optional (instant Esc, better popup placement)

**Linux**

- x86_64 or aarch64
- zsh 5.8+
- A supported standalone terminal

---

## Installation

### macOS — Homebrew

```bash
brew tap saiumesh535/termi-bin https://github.com/saiumesh535/termi-bin
brew trust saiumesh535/termi-bin   # Homebrew 5.0+
brew install --cask termi
```

Then open **Termi → Integrations → Install in Zsh**, and open a new terminal tab. On Homebrew 5.0+, `brew trust` is required once so upgrades work.

Upgrade later:

```bash
brew trust saiumesh535/termi-bin   # once, if you installed before trust was required
brew update
brew upgrade --cask termi
```

### macOS — Manual download

1. Download the latest **[Termi.zip](https://github.com/saiumesh535/termi-bin/releases/latest)** from [Releases](https://github.com/saiumesh535/termi-bin/releases).
2. Unzip and drag **Termi.app** to **Applications**.
3. Open Termi (allow in **System Settings → Privacy & Security** if macOS blocks the first launch).
4. **Integrations → Install in Zsh**, then open a new terminal tab.

### Linux — install script

```bash
curl -fsSL https://github.com/saiumesh535/termi-bin/releases/latest/download/install-linux.sh | sh
termi install-zsh
termi doctor
```

Installs a static musl binary to `~/.local` (override with `TERMI_PREFIX`). Open a new shell after install. Full notes: [termi.saiumesh.dev](https://termi.saiumesh.dev/#install-linux).

### Release assets

| Asset | Description |
|-------|-------------|
| `Termi.zip` | Signed, notarized macOS app (daemon + zsh hook bundled) |
| `termi-linux-x86_64.tar.gz` | Static Linux binary + hook (x86_64) |
| `termi-linux-aarch64.tar.gz` | Static Linux binary + hook (aarch64) |
| `install-linux.sh` | One-line Linux installer |

### In-app updates (macOS)

Open **Termi → Settings → Updates**, then **Check for Updates…**.

Sparkle feed: [`appcast.xml`](https://raw.githubusercontent.com/saiumesh535/termi-bin/main/appcast.xml)

---

## Quick start

**macOS**

1. Launch **Termi** from Applications.
2. Open **Integrations → Install in Zsh**.
3. Open a **new terminal tab** (or window).
4. Type `g` for command names, or `git ` / `cd ` / `npm run ` for the next word.

**Linux**

1. Run the install script above, then `termi install-zsh`.
2. Open a new Zsh session in a supported terminal.
3. Type `git ` or `cd ` — a text menu appears under the prompt.

**Tip:** Use **Doctor** (macOS Settings, or `termi doctor`) if suggestions never show — it flags a missing hook, offline daemon, or (on macOS) Accessibility.

---

## How it works

1. A Rust **completion daemon** answers suggestion requests over a Unix socket.
2. The **zsh hook** reads your command line and asks the daemon.
3. **macOS:** the Swift app shows a floating panel. **Linux:** the hook paints a `zle -M` menu.
4. Tab inserts, Enter selects, Esc dismisses. On macOS, **Sparkle** checks this repo’s releases for signed updates.

---

## Links

| | |
|---|---|
| **Website** | [termi.saiumesh.dev](https://termi.saiumesh.dev) |
| **Releases** | [github.com/saiumesh535/termi-bin/releases](https://github.com/saiumesh535/termi-bin/releases) |
| **Linux install** | [termi.saiumesh.dev/#install-linux](https://termi.saiumesh.dev/#install-linux) |
| **Issues** | [github.com/saiumesh535/termi-bin/issues](https://github.com/saiumesh535/termi-bin/issues) |
| **Appcast** | [appcast.xml](https://raw.githubusercontent.com/saiumesh535/termi-bin/main/appcast.xml) |

---

Made for people who live in the terminal — on Mac and Linux.
