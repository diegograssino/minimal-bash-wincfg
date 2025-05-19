#Find this windows bash config on: https://github.com/diegograssino/minimal-bash-wincfg

alias gstatus='git status -sb'
alias gstash='git stash'
alias gpop='git stash pop'
alias gcheckout='git checkout $2'
alias gcheckoutb='git checkout -b $2'
alias gadd='git add --all'
alias gcommit='git commit -m $2'
alias gpush='git push'
alias gpusho='git push origin $2'
alias gpull='git pull'
alias gpullo='git pull origin $2'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gundo='git reset --soft HEAD~1'

alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'

if test -f /etc/profile.d/git-sdk.sh
then
    TITLEPREFIX=SDK-${MSYSTEM#MINGW}
else
    TITLEPREFIX=$MSYSTEM
fi

PS1='\[\033]0;Git-Bash: ${PWD//[^[:ascii:]]/?}\007\]'
PS1="$PS1"'\n'
PS1="$PS1"'\[\033[36m\]'
PS1="$PS1"'\w'
PS1="$PS1"'\[\033[0m\]'
MSYS2_PS1="$PS1"

if test -z "$WINELOADERNOEXEC"
then
    GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
    COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
    COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
    COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
    if test -f "$COMPLETION_PATH/git-prompt.sh"
    then
        . "$COMPLETION_PATH/git-completion.bash"
        . "$COMPLETION_PATH/git-prompt.sh"
        PS1="$PS1"'\[\033[35m\]'  # change color
        PS1="$PS1"'`__git_ps1` '   # bash function
    fi
fi

PS1="$PS1"'\n'
PS1="$PS1"'\[\033[32m\]'
PS1="$PS1"'➜ '
PS1="$PS1"'\[\033[0m\]'

MSYS2_PS1="$PS1"

export GIT_PS1_SHOWSTASHSTATE=false
export GIT_PS1_SHOWDIRTYSTATE=false
export GIT_PS1_SHOWUNTRACKEDFILES=false
export GIT_PS1_SHOWUPSTREAM="auto"