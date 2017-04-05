# The following lines were added by compinstall
source ~/.zplug/init.zsh

zplug "chrissicool/zsh-256color"
zplug "zsh-users/zaw"
zplug "djui/alias-tips"
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh
zplug "plugins/archlinux", from:oh-my-zsh
zplug "plugins/taskwarrior", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions", defer:2
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search", defer:3

zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle :compinstall filename '/home/rude/.zshrc'

autoload -Uz compinit

autoload -U promptinit && promptinit
prompt redhat 

compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory extendedglob
# Install plugins if there are plugins that have not been installed
if ! zplug check; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

alias pacman='sudo pacman'
alias blt='sudo hciconfig hci0 up'
alias screen='sudo sh /home/rude/.main.sh'
alias vpn='sudo systemctl start openvpn-client@ca.service'
#Arrows Navigation
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word


# Then, source plugins and add commands to $PATH
zplug load
export PATH=~/bin:$PATH
