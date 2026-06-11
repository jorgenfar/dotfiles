#!/usr/bin/env zsh
set -euo pipefail

repo_dir="${0:A:h}"

if ! command -v brew >/dev/null 2>&1; then
  print "Homebrew is not installed yet."
  print "Install it from https://brew.sh, then rerun ./bootstrap.sh."
  exit 1
fi

if ! command -v chezmoi >/dev/null 2>&1; then
  print "Installing chezmoi..."
  brew install chezmoi
fi

print "Installing packages from Brewfile..."
brew bundle --file "$repo_dir/Brewfile"

print ""
print "Showing chezmoi diff..."
chezmoi --source "$repo_dir" diff

print ""
print -n "Apply these dotfiles to \$HOME now? [y/N] "
read -r reply

case "$reply" in
  [yY]|[yY][eE][sS])
    chezmoi --source "$repo_dir" apply
    print "Applied."
    ;;
  *)
    print "Skipped apply. Run this later when ready:"
    print "  chezmoi --source \"$repo_dir\" apply"
    ;;
esac
