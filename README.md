# Dotfiles

Personal macOS developer setup built around `chezmoi`, Homebrew, zsh, and a small set of terminal tools.

## First install

On a new Mac:

```sh
xcode-select --install
```

Install Homebrew from https://brew.sh, then from this repo:

```sh
./bootstrap.sh
```

The bootstrap script installs `chezmoi` if Homebrew is available, runs `brew bundle`, shows the chezmoi diff, and asks before applying files into `$HOME`.

## Daily commands

```sh
chezmoi diff
chezmoi apply
chezmoi edit ~/.zshrc
brew bundle --file "$(chezmoi source-path)/Brewfile"
```

## Structure

| Path | Purpose |
| --- | --- |
| `Brewfile` | Homebrew apps and CLI tools for a new Mac |
| `dot_zshenv` | Tiny shell environment shared by zsh sessions |
| `dot_zshrc` | Lean interactive zsh setup |
| `dot_config/zsh/*.zsh` | Small zsh fragments that can grow deliberately |
| `dot_config/ghostty/config` | Ghostty config, starting with the quick terminal hotkey |
| `dot_config/starship.toml` | Minimal prompt config |
| `dot_config/git/config` | Global Git defaults without personal identity |

## Current defaults

- Terminal: Ghostty
- Quick terminal hotkey: `alt+space`
- Shell: zsh
- Prompt: Starship
- Navigation: zoxide and fzf
- File/search tools: eza, ripgrep, bat, fd
- Project environments: direnv
- Dotfile placement: chezmoi, used gently
