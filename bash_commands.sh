# My terminal alias

alias :q=exit
alias editor=vim
alias :q!=poweroff
alias py=python3
alias gitlog='git log --all --graph'
alias prolog=swipl
alias ls='ls --block-size=M' 
alias pye='. bin/activate'
alias ocaml='rlwrap ocaml'

PS1="\[\033[01;34m\] \T | \u -> \[\033[00m\]" 
# prompt: date | raul -> 

set -o vi

export EDITOR="/bin/vim"
export VISUAL="/bin/vim"
