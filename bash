export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
export HISTCONTROL=ignoreboth
export HISTIGNORE="&:ls:[bf]g:exit"
export TERM="xterm-256color"

shopt -s histappend
DOTFILES_PATH=~/.dotfiles

shopt -s checkwinsize
set -o vi


. $DOTFILES_PATH/colors
. $DOTFILES_PATH/svn_prompt

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

if [ -f ~/.rvm/scripts/rvm ] ; then
    . ~/.rvm/scripts/rvm
fi

if [ "$(ls $DOTFILES_PATH/aliases)" ]; then
   for f in $DOTFILES_PATH/aliases/*; do source $f; done
fi

PS1="\n\n\[${txtwht}\]\u\[${txtgrn}\]@\h\[${txtcyn}\] \d \T\n\[${txtylw}\]\$(jobs_prompt)\n\[${txtrst}\][\w]\n→ \[${txtrst}\]"


export CDPATH='.:~:~/projects'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export EDITOR=vim

if [ -d "~/software/bin" ]; then
  export PATH="${PATH}$(find -L ~/software/bin -iname 'bin' -type d -printf ':%p')"
fi

if [ -d "~/software/classpath" ]; then
  export CLASSPATH="${CLASSPATH}$(find -L ~/software/classpath -iname '*.jar' -printf ':%h\n'  | uniq | tr -d '\n')"
fi
