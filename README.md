# Termi

> Autocomplete that stays in the prompt.

[![Website](https://img.shields.io/badge/website-termi.saiumesh.dev-teal.svg)](https://termi.saiumesh.dev)
[![macOS](https://img.shields.io/badge/macOS-13+-blue.svg)](https://www.apple.com/macos/)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-5.9+-orange.svg)](https://swift.org/)

**Termi** is a native macOS autocomplete companion for **iTerm2 + Zsh**. Fig-style suggestions appear as you type — CLI specs, paths, and more — without leaving the terminal. Local-first: Rust completion daemon + Swift menu bar app. No cloud, no account.

**Website:** [termi.saiumesh.dev](https://termi.saiumesh.dev)

This repository hosts **public binaries and the Sparkle appcast**. Source stays private.

---

## Features

- **Fig-style autocomplete** — Suggestions overlay in iTerm2 as you type, with ↑↓ · Tab · ↵ · Esc.
- **CLI specs** — Bundled completion trees for git, npm, docker, kubectl, and more.
- **Filesystem paths** — Complete directories and files when you `cd` or open paths.
- **Companion app** — Home, Autocomplete, Integrations, Doctor, App, and About in a native SwiftUI window.
- **Doctor** — See daemon, hook, Accessibility, and setup status in one place.
- **Privacy first** — Everything runs on your Mac. No account, no telemetry cloud.
- **Settings & updates** — Open at login, light/dark/system theme, and Sparkle in-app updates from this repo’s releases.

---

## Supported terminals

- **iTerm2** + **Zsh** (supported today)
- Ghostty / Terminal.app — soon

---

## System requirements

- **macOS 13** or later
- **iTerm2** + **Zsh**
- Apple Silicon or Intel
- Accessibility optional (instant Esc, better popup placement)

---

## Installation

### Manual download

1. Download the latest **[Termi.zip](https://github.com/saiumesh535/termi-bin/releases/latest)** from [Releases](https://github.com/saiumesh535/termi-bin/releases).
2. Unzip and drag **Termi.app** to **Applications**.
3. Open Termi (allow in **System Settings → Privacy & Security** if macOS blocks the first launch).

Each release includes:

| Asset | Description |
|-------|-------------|
| `Termi.zip` | Signed, notarized macOS app (daemon + zsh hook bundled) |

### In-app updates

Open **Termi → Settings → Updates**, then **Check for Updates…**.

Sparkle feed: [`appcast.xml`](https://raw.githubusercontent.com/saiumesh535/termi-bin/main/appcast.xml)

---

## Quick start

1. Launch **Termi** from Applications.
2. Open **Integrations → Install in Zsh**.
3. Open a **new iTerm tab** (or window).
4. Type something like `git ` or `cd ` and watch suggestions appear.

**Tip:** Use **Doctor** if the popup never shows — it flags a missing hook, offline daemon, or Accessibility grant.

---

## How it works

1. The Swift app keeps a Rust **completion daemon** running.
2. The **zsh hook** reads your command line and asks the daemon for suggestions.
3. A floating panel shows matches; Tab inserts, Enter selects, Esc dismisses.
4. **Sparkle** checks this repo’s releases for signed updates.

---

## Links

| | |
|---|---|
| **Website** | [termi.saiumesh.dev](https://termi.saiumesh.dev) |
| **Releases** | [github.com/saiumesh535/termi-bin/releases](https://github.com/saiumesh535/termi-bin/releases) |
| **Issues** | [github.com/saiumesh535/termi-bin/issues](https://github.com/saiumesh535/termi-bin/issues) |
| **Appcast** | [appcast.xml](https://raw.githubusercontent.com/saiumesh535/termi-bin/main/appcast.xml) |

---

Made for people who live in the terminal.
