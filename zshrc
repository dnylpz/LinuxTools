if [ ! -e ~/.oh-my-zsh/antigen.zsh ]
then
	mkdir ./.oh-my-zsh
	curl -L git.io/antigen > .oh-my-zsh/antigen.zsh
fi

source ~/.oh-my-zsh/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle docker
antigen bundle terraform
antigen bundle python 
antigen bundle pylint
antigen bundle pep8
antigen bundle osx
antigen bundle kubectl
antigen bundle iterm2
antigen bundle aws
antigen theme agnoster

antigen apply
alias vi=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=/usr/local/bin:$PATH
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/lib/python3.9/site-packages/powerline/bindings/zsh/powerline.zsh
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh


# Powerline fonts
FONTS_EXISTS=$(ls $HOME/Library/Fonts | grep powerline)
if [[  -z $FONTS_EXISTS ]]; then;
	git clone https://github.com/powerline/fonts.git
	. ./fonts/install.sh
	rm -rf ./fonts
fi

if [[ -d $HOME/.nvm ]]; then;
	echo "nvm present, skipping"
else;
	echo "installing nvm"
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
