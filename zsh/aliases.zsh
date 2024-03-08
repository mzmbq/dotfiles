##########################################
# Aliases
##########################################

################# Files ##################
# List 5 biggest dirs
alias top5='du -ahx . | sort -rh | head -5'

alias c=clear
alias cd..='cd ..'
alias ..='cd ..'

alias lsc='clear; ls'
alias lsd='ls -d */'

################## Zsh ###################
alias reload='. ~/.zshrc'

################# Misc ###################
export DOTNET_CLI_TELEMETRY_OPTOUT=true

############### Syncthing ################
alias ststate="systemctl status syncthing@$USER.service"

################ Docker ###################
alias docker-alias='echo "d d-d dprune"'
alias d='docker $*'
alias d-c='docker-compose $*'
alias dprune="docker rm $(docker ps -a -q -f status=exited)"

################# Git #####################
alias gs='git status'