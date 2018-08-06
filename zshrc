source ~/.oh-my-zsh/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle docker
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle terraform
antigen bundle python 
antigen bundle pylint
antigen bundle pep8
antigen bundle osx
antigen bundle kubectl
antigen bundle iterm2
antigen bundle gulp
antigen bundle heroku
antigen bundle gradle
antigen bundle django
antigen bundle aws
antigen theme agnoster

antigen apply
alias vi=vim
export PATH=/usr/local/bin:$PATH
export MONO_HOME=/Library/Frameworks/Mono.framework
export PATH=$PATH:$MONO_HOME/Commands
export DOTNET_HOME=/usr/local/share/dotnet
export PATH=$PATH:$DOTNET_HOME
. /usr/local/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
