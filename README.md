# WhiteHyun's Homebrew tap

Homebrew casks for [WhiteHyun](https://github.com/WhiteHyun)'s macOS apps.

## Install

```sh
brew install --cask whitehyun/tap/quotari
```

`brew tap whitehyun/tap` first is optional; the fully qualified name taps it
automatically.

## Casks

| Cask | Description |
| --- | --- |
| [quotari](Casks/quotari.rb) | Menu-bar usage, limits, and reset times for AI coding subscriptions ([source](https://github.com/WhiteHyun/Quotari)) |

## Updating

```sh
brew update && brew upgrade --cask quotari
```

Quotari also ships Sparkle updates for direct DMG/ZIP downloads. Cask installs
are managed by Homebrew.

Report app issues on [WhiteHyun/Quotari](https://github.com/WhiteHyun/Quotari/issues);
use this repository only for packaging problems.
