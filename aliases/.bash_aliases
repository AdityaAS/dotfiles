# do not delete / or prompt if deleting more than 3 files at a time #
alias r='reset'
# confirmation #
alias mv='mv -i'
alias ln='ln -i'
alias cp='rsync -ah --progress'
alias rsync='rsync -ah --progress'

# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ll='ls -lF --color=auto'
alias la='ls -alF --color=autpo'
alias ls='ls -F --color=auto'
alias l.='ls -d .* --color=auto'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# Make grep more user friendly by highlighting matches
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias mkdir='mkdir -pv'
alias diff='colordiff'

# handy short cuts #
alias h='history'
alias j='jobs -l'
alias wget='wget -c'

# Jupyter aliases
alias jlab='jupyter lab --no-browser --port '
alias jnote='jupyter notebook --no-browser --port '

# Git aliases
alias gs='git status'
alias gst='git stash'
alias ga='git add '
alias gf='git fetch'
alias gbd='git branch -d'
alias gb='git branch'
alias gc='git commit '
alias gd='git diff '
alias gch='git checkout '
alias gcb='git checkout -b'
alias gpush='git push origin '
alias gpull='git pull origin '
alias greset='git reset HEAD '
alias gcf='git checkout -- '
alias gittree='git log --graph --decorate --pretty=oneline --abbrev-commit'

# Docker aliases
alias di='docker images '
alias dc='docker containers ls '
alias dcall='docker container ls -a '
alias dps='docker ps -a '
alias ds='docker stop '
alias drm='docker rm -f '
alias drmi='docker rmi '
alias drun='nvidia-docker run -it --user=$(id -u):$(id -g) -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro -p 9010-9020:9010-9020 --net=host -v /scratch:/scratch -v /scratchd:/scratchd -v /scratche:/scratche '

alias kgd='kubectl get deployments'
alias kgp='kubectl get pods'
alias kgn='kubectl get nodes'
alias kgnlabels='kubectl get nodes --show-labels'
alias kln='kubectl label nodes'
alias kdesp='kubectl describe pods'
alias klp='kubectl logs'
alias kc='kubectl create -f'
alias kdelp='kubectl delete pods'
alias kdpforce='kubectl delete pods --grace-period=0 --force'
alias kdd='kubectl delete deployment'

# Google drive cli downloads
function gdrive_download () {
  CONFIRM=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate "https://docs.google.com/uc?export=download&id=$1" -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')
  wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$CONFIRM&id=$1" -O $2
  rm -rf /tmp/cookies.txt
}
# Usage gdrive_download <id_of_file> (not URL)
