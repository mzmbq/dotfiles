##########################################
# Aliases
##########################################

################# Files ##################
# List 5 biggest dirs
alias top5='du -ahx . | sort -rh | head -5'

alias c=clear
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'

alias lsc='clear; ls'
alias lsd='ls -d */'

################## Zsh ###################
alias reload='. ~/.zshrc'
alias rebuild='cd ~/dotfiles && make build && cd - && reload'
alias personal='nvim ~/dotfiles/zsh/personal.zsh && rebuild'
alias dotpull='cd ~/dotfiles && gl && cd - && rebuild'

################# Misc ###################
export DOTNET_CLI_TELEMETRY_OPTOUT=true

############### Syncthing ################
alias ststate="systemctl status syncthing@$USER.service"

################ Docker ###################
alias d='docker $*'
alias d-c='docker-compose $*'
alias dprune="docker container prune -f"

################# Git #####################
alias gs='git status'
