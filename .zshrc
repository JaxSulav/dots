# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=10000
setopt beep nomatch
unsetopt autocd extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sulav/.zshrc'

autoload -Uz compinit
compinit

# Case insensitive
zstyle ':completion:*'  matcher-list 'm:{a-z}={A-Z}'

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

neofetch --source ~/.config/ascii/astronaut | lolcat
# End of lines added by compinstall

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export EDITOR='vim'

alias ls='ls --color=auto'
alias activate="source env/bin/activate"
alias scrot-full='scrot ~/Pictures/Screenshots/%Y-%m-%d::%H:%M:%S.png'
alias scrot-partial='scrot -s ~/Pictures/Screenshots/%Y-%m-%d::%H:%M:%S.png'
alias xrand-brightness-lvl='xrandr --output eDP --brightness' # Put a value after it, xrand-brightness-lvl 1

#pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias rmpacmanlock="sudo rm /var/lib/pacman/db.lck"

#grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#Cleanup orphaned packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
