# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples


# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth
export HISTIGNORE="&:ls:[bf]g:exit"
export TERM="xterm-256color"
 #append to the history file, don't overwrite it

shopt -s histappend
DOTFILES_PATH=~/.dotfiles


# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


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

PS1="\n\n\[${bldwht}\]\u@\[${bldgrn}\]\h\[${txtwht}\] \[${txtcyn}\]\d \T\n\[${txtylw}\]\$(jobs_prompt)\n\[${txtblu}\][\w]\n\[${bldwht}\]→ \[${txtrst}\]"
