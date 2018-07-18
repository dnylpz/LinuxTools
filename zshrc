source ~/.oh-my-zsh/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle docker
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme agnoster

antigen apply
alias vi=vim
export PATH=/usr/local/bin:$PATH
export MONO_HOME=/Library/Frameworks/Mono.framework
export PATH=$PATH:$MONO_HOME/Commands
. /usr/local/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh
