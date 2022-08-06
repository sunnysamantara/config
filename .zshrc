#inital customization
neofetch
eval "$(starship init zsh)"

#if not running interactively, dont do anything
[[ $- != *i* ]] && return

#enable colour
autoload -U colors && colors

#History in cache file
HISTFILE=~/.config/zsh/zsh-history/history
HISTSIZE=2000
SAVEHIST=2000

#Basic auto/tab complete
autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
#zmodload zsh/complist
compinit
_comp_options+=(globdots) #inculde hidden files

#key-binding
bindkey -e
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey "^[[H"   beginning-of-line
bindkey "^[[F"   end-of-line
bindkey "^[[3~"  delete-char
bindkey ";2C" forward-word
bindkey ";2D" backward-word

#Add Plugins
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh 2>/dev/null
source ~/.config/zsh/zsh-you-should-use/you-should-use.plugin.zsh 2>/dev/null
source /usr/share/doc/pkgfile/command-not-found.zsh 2>/dev/null
source ~/.local/share/icons-in-terminal/icons_bash.sh  

#alias
alias refresh="source ~/.zshrc"
alias ls="logo-ls"

