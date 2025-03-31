# Cleanup $PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/home/bjeyn/.local/bin"
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export XDG_CONFIG_HOME=/home/bjeyn/.config/
# So Sway can find libwlroots.so
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib64
export PKG_CONFIG_PATH=/usr/local/lib64/pkgconfig
export XDG_CURRENT_DESKTOP=river

# https://github.com/mswiger/seogi?tab=readme-ov-file#usage
export GTK_IM_MODULE=wayland
export QT_IM_MODULE=wayland
export XMODIFIERS="@im=wayland"

# I hate Corepack
export COREPACK_ENABLE_AUTO_PIN=0

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $HOME/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Remove ZSH history
SAVEHIST=10
HISTSIZE=10
HISTFILE=/home/bjeyn/.histfile

EDITOR=/usr/bin/nvim
GIT_EXTERNAL_DIFF=difft

# Aliases
alias vim="nvim"
alias tmux="tmux -f $HOME/.config/tmux/.tmux.conf"

alias size="du -sh"
alias ".."="cd .."

alias .external=$HOME/scripts/.external.sh
alias .power=$HOME/scripts/.power.sh
alias .wiki="vim $HOME/Documents/notes"
alias .lock=$HOME/scripts/.lock.sh
alias .gif=$HOME/scripts/.gif.sh

alias serve="python -m http.server 8080"

alias gw='git config user.email '\''brookjeynes@ssw.com.au'\'' && git config user.name '\''brookjeynes-ssw'\'
alias gp='git config user.email '\''jeynesbrook@gmail.com'\'' && git config user.name '\''BrookJeynes'\'

alias cm='riverctl keyboard-layout -variant colemak_dh us'
alias qw='riverctl keyboard-layout au'

alias xqw='setxkbmap -layout us'
alias xcm='setxkbmap -variant colemak_dh'

# Zig
export PATH="$HOME/.zig/current:$PATH"

# Cargo
source $HOME/.cargo/env

# https://sw.kovidgoyal.net/kitty/faq/#i-get-errors-about-the-terminal-being-unknown-or-opening-the-terminal-failing-or-functional-keys-like-arrow-keys-don-t-work
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

# Vim mode - https://github.com/softmoth/zsh-vim-mode
source "$HOME/plugins/zsh-vim-mode/zsh-vim-mode.plugin.zsh"
KEYTIMEOUT=1 # https://github.com/softmoth/zsh-vim-mode#keytimeout

# bun completions
[ -s "/home/bjeyn/.bun/_bun" ] && source "/home/bjeyn/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# fnm
FNM_PATH="/home/bjeyn/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/bjeyn/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# ADB
export PATH="$HOME/sdks/platform-tools:$PATH"

# pnpm
export PNPM_HOME="/home/bjeyn/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# go
export PATH="/usr/local/go/bin:$PATH"

# llvm v19
export PATH="/home/bjeyn/local/llvm19-assert/bin/:$PATH"
