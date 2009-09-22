source $HOME/.profile

source $HOME/.bash_prompt

export HISTIGNORE=''
export HISTSIZE=10000
export HISTFILESIZE=$HISTSIZE
export INPUTRC='~/.inputrc'

if [ -f /opt/local/etc/bash_completion ]; then
  source /opt/local/etc/bash_completion
fi

complete -W "$(cat $HOME/.cheats)" cheat

if [ -f /usr/local/bin/rake_completion ]; then
  complete -C /usr/local/bin/rake_completion -o default rake
fi

if [ -f ~/Code/src/git/contrib/completion/git-completion.bash ]; then
  source ~/Code/src/git/contrib/completion/git-completion.bash
fi

export HISTIGNORE="&:ls:exit"

shopt -s cdspell

# Tab complete for sudo
complete -cf sudo

#prevent overwriting files with cat
set -o noclobber

#stops ctrl+d from logging me out
set -o ignoreeof

#Treat undefined variables as errors
set -o nounset

if [ -f $HOME/.bash_profile.unprintable ]; then
  source $HOME/.bash_profile.unprintable
fi
