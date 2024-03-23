# Dotfiles

## Prerequisites

- zsh

## Setup

1. Clone and navigate to the repo: `git clone https://github.com/mzmbq/dotfiles.git ~/dotfiles && cd ~/dotfiles`
2. Run `make`
3. Apply changes: `source ~/.zshrc`

## Updates

Use `rebuild` to apply changes. Defined in `zsh/aliases.zsh`:

```zsh
alias rebuild='cd ~/dotfiles && make build && cd - && reload'
```

