alias reload='source ~/.zshrc'
alias path='print -l $path'

if command -v eza >/dev/null 2>&1; then
  alias ls='eza --group-directories-first'
  alias ll='eza -lah --git --group-directories-first'
  alias la='eza -la --group-directories-first'
  alias tree='eza --tree --group-directories-first'
fi

if command -v bat >/dev/null 2>&1; then
  alias bcat='bat'
fi

if command -v rg >/dev/null 2>&1; then
  alias search='rg'
fi
