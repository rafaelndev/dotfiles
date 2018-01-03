#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

fpath=(~/.zsh/completion $fpath)

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

autoload -U promptinit; promptinit
prompt pure

# Customize to your needs...

xrdb ~/.Xresources

# vim superman
vman() {
  nvim "+Man $*"

  if [ "$?" != "0" ]; then
    echo "No manual entry for $*"
  fi
}

open_legenda() {
  aunpack $(ls -Art | grep legendas_tv | tail -n 1) && thunar $(ls -Atrd */ | grep legendas_tv | tail -n 1)
}

start_docker(){
  if [[ $(systemctl is-active docker) == "active" ]]; then
    sudo systemctl start docker
  fi

  docker-compose build && docker-compose up
}

pac_find_exe() {
  for ARG in $(pacman -Qql $1); do
    [ ! -d $ARG ] && [ -x $ARG ] && echo $ARG;
  done
}
lso() { ls -alG "$@" | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(" %0o ",k);print}'; }

mpv_udemy() { 
  VIDEO="$(ls | grep .mp4 | fzf)"
  ULTIMO_ASSISTIDO="/home/rafael/Vídeos/Curso de Java/Ultimo-assistido"
  PASTA_ATUAL=${PWD##*/}
  mpv $VIDEO --sub-file-paths=captions --sub-auto=fuzzy --fs
truncate --size 0 $ULTIMO_ASSISTIDO && echo "$PASTA_ATUAL/$VIDEO" >> $ULTIMO_ASSISTIDO
}

# man autocomplete > vman
compdef vman="man"

stty -ixon

export GOPATH=~/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/lib/eclipse/
export PATH=$PATH:~/.composer/vendor/bin
export PATH=$PATH:~/bin/
export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/.config/composer/vendor/bin
export RUST_SRC_PATH=~/.rust/src
export ANDROID_HOME=/opt/android-sdk

PATH="/home/rafael/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/rafael/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/rafael/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/rafael/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/rafael/perl5"; export PERL_MM_OPT;

alias CMD_HOTSPOT="_ create_ap wlo1 enp8s0 ZueraADS ads123456"
alias ultimo_arquivo="ls -t | head -1"
alias pkg-update='sudo etckeeper pre-install && yaourt -Suya && sudo etckeeper post-install'
alias CMD_ENVIAR_PHONE="/opt/scripts/kdeconnect-send"
alias extract="aunpack"
alias clipboard='xclip -sel clip'
export EDITOR="nvim"
export BROWSER="xdg-open"
export LIBVA_DRIVER_NAME=i965
export VDPAU_DRIVER=va_gl
alias note='nvim "/home/rafael/Documentos/Notes/$(ls ~/Documentos/Notes/ | fzf)"'
alias pac="yaourt"
alias vim='nvim'
alias v='nvim'
alias _="sudo"
alias dica='tldr'

bindkey -e
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_DEFAULT_OPTS=""
export FZF_COMPLETION_TRIGGER='--'

ulimit -n 2048

setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_EXPIRE_DUPS_FIRST

#eval `dircolors ~/dircolors.default`

source ~/.zsh/plugins/alias-tips/alias-tips.plugin.zsh
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Dica: "

source ~/.zsh/plugins/zsh-systemd/zsh-systemd.plugin.zsh
source ~/.zsh/plugins/zsh-background-notify/bgnotify.plugin.zsh

# export XDG_RUNTIME_DIR="/run/user/$UID"
# export DBUS_SESSION_BUS_ADDRESS="unix:path=${XDG_RUNTIME_DIR}/bus"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# source /usr/share/z/z.sh
#
# alias j='z'

###-tns-completion-start-###
if [ -f /home/rafael/.tnsrc ]; then 
    source /home/rafael/.tnsrc 
fi
###-tns-completion-end-###
