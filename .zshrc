fastfetch

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

plugins=(git)

source $ZSH/oh-my-zsh.sh

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#565f89'

bindkey '^ ' autosuggest-accept

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=#7aa2f7,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#bb9af7'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#7dcfff,bold'
ZSH_HIGHLIGHT_STYLES[path]='fg=#c0caf5,underline'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#f7768e,bold'

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# peaclock
alias peaclock='peaclock --config-dir ~/.config/peaclock --colour on'

# Dynamic System Paths
export WALLPAPER_DIR="/home/pzwt4cc/Pictures/Wallpapers"
export SCRIPT_DIR="/home/pzwt4cc/.config/hypr/scripts"

[ -f ~/.cache/wal/colors.sh ] && source ~/.cache/wal/colors.sh
PROMPT="%F{$color4}%n%f@%F{$color2}%m%f:%F{$color6}%~%f$ "

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	command rm -f -- "$tmp"
}