# History

export HISTSIZE=1000
export HISTFILESIZE=1000

# easy history search with CTRL+B / CTRL+F
bind '"\C-b":history-search-backward'
bind '"\C-f":history-search-forward'

# generate log-archive for last 24h 
# as file "system_logs.logarchive" in local dir
# open with Console.app
alias logarchive24h='sudo log collect --last 1d && open -a /Applications/Utilities/Console.app ./system_logs.logarchive'


# Aliases

alias ll='ls -la'
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder'
alias reload='source ~/.bash_profile'
alias hg='history | grep '
alias vsc='open -a "/Applications/Visual Studio Code.app" '


# Docker

# docker cleanup commands
## kill all running containers
alias dockerkillall='docker kill $(docker ps -q)'

## delete all stopped containers
alias dockercleanc='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'

## delete all untagged images
alias dockercleani='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'

## delete all images
alias dockercleanalli='printf "\n>>> Deleting all images\n\n" && docker rmi $(docker images -q)'

## delete all untagged volumes
alias dockercleanv='printf "\n>>> Deleting untagged volumes\n\n" && docker volume rm $(docker volume ls -q -f dangling=true)'

## delete all volumes
alias dockercleanallv='printf "\n>>> Deleting all volumes\n\n" && docker volume rm $(docker volume ls -q)'

## delete all stopped containers and untagged images
alias dockerclean='dockercleanc || true && dockercleani'



# PATH

export PATH=$PATH:~/Library/Android/sdk/platform-tools/:~/.composer/vendor/bin
