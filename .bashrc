# Load in the git branch prompt script.
source ~/.git-prompt.sh

# For EECS 482 project 4
export FS_CRYPT='AES'

function md {
	mkdir $1
	cd $1
}

function __git_prompt {
  GIT_PS1_SHOWDIRTYSTATE=1
  [ `git config user.pair` ] && GIT_PS1_PAIR="`git config user.pair`@"
  __git_ps1 "($GIT_PS1_PAIR%s)" | sed 's/\([+*]\{1,\}\)$/\1/'
}

# Prompt
PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;31m\]\$(__git_prompt)\n\[\033[01;34m\]\$\[\033[00m\] "

# Aliases
alias upgrade="sudo apt-get update && sudo apt-get upgrade"
alias gst="git status"
alias :q="exit"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --colour=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias tmux='tmux -2'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
