# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Aliases
alias cat="bat"    # https://github.com/sharkdp/bat
alias ls="exa"     # https://github.com/ogham/exa
alias tree="exa --tree --git-ignore"

alias size="du -sh"
alias ".."="cd .."

# Zig
export PATH="/Users/jeynesb/zig/zig-macos-aarch64-0.11.0-dev.2935+ec6ffaa1e/:$PATH"
export PATH="/Users/jeynesb/zig/zig-macos-aarch64-0.11.0-dev.2935+ec6ffaa1e/zls/:$PATH"

# https://sw.kovidgoyal.net/kitty/faq/#i-get-errors-about-the-terminal-being-unknown-or-opening-the-terminal-failing-or-functional-keys-like-arrow-keys-don-t-work
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

# Vim mode - https://github.com/softmoth/zsh-vim-mode
source "$HOME/zsh-vim-mode/zsh-vim-mode.plugin.zsh"
KEYTIMEOUT=1 # https://github.com/softmoth/zsh-vim-mode#keytimeout

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
