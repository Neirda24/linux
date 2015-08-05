#####        #####
#     BASICS     #
##################
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ll -alh'
alias l='ls -CF'

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias vi='vim'
alias cp='cp -p'

alias rm='rm -i' # force confirmation
alias tail='tail -n0'
alias grep='grep --color'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#####      #####
#     TMUX     #
################
alias tm='tmux -S /tmp/adrienschaegis_tmux attach -d'
alias tm-new='tmux -S /tmp/adrienschaegis_tmux new'

#####      #####
#     BUGS     #
################
alias a-refresh-bluetooth='gksudo pactl load-module module-bluetooth-discover'

#####          #####
#     SYMFONY2     #
####################
# Composer
alias composer='php -dmemory_limit=1G ~/devel/composer.phar '
alias composer-update='composer --prefer-source --prefer-dist '

# Console
alias console='php app/console '
alias a-sf2-cache-clean='rm -rf app/cache/* && console cache:warmup -e=dev && console cache:warmup -e=prod'
alias a-sf2-assets-clean='rm -rf web/css/* && rm -rf web/js/* && a-sf2-cache-clean && console assetic:dump -e=prod && console assets:install web '
alias a-sf2-config-dump_reference='console config:dump-reference '

#####        #####
#     SMARTY     #
##################
alias a-rm-smarty-templates="find ~/devel/ -type d -name 'templates_c' -exec rm -rf {}/* \;"

#####     #####
#     git     #
###############
alias a-git-empty='git commit -a -m '
alias a-git-test='git commit -a -m "[TEST] Commit for tests on stg."'
alias a-git-noComment='git commit -a -m "[CHANGE] Commit without comment." '
alias a-git-composer-lock='git commit -a -m "[CHANGE] Update composer.lock." '

#Load aliases from projects
for fichier in `find ~/.bash_aliases.d -type f -exec echo {} \;`
do
    source "$fichier"
done
