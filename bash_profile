export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/lib/postgresql83/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export VIM_APP_DIR=/Applications/MacVim-snapshot-36
export EDITOR=vim

if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

########
# RUBY #
########
alias irb='irb --readline -r irb/completion -rubygems'
function cdgem {
  pushd /opt/local/lib/ruby/gems/1.8/gems/; cd `ls|grep $1|sort|tail -1`
}