source ~/.zsh/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle docker
antigen bundle virtualenvwrapper
antigen bundle docker-compose
antigen bundle vim-interaction
antigen bundle django

antigen theme robbyrussell

antigen apply
