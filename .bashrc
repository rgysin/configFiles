# Load in the git branch prompt script.
source ~/.git-prompt.sh

function __git_prompt {
  GIT_PS1_SHOWDIRTYSTATE=1
  [ `git config user.pair` ] && GIT_PS1_PAIR="`git config user.pair`@"
  __git_ps1 "($GIT_PS1_PAIR%s)" | sed 's/\([+*]\{1,\}\)$/\1/'
}

# Prompt
PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \W\[\033[01;31m\]\$(__git_prompt) \[\033[01;34m\]\$\[\033[00m\] "

# Aliases
alias upgrade="sudo apt-get update && sudo apt-get upgrade"
alias gst="git status"
alias :q="exit"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."