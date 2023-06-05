# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.nvm/nvm.sh

# https://github.com/newsboat/newsboat
alias nb="newsboat"

# https://github.com/sharkdp/bat
alias cat="bat"

# https://github.com/ogham/exa
alias ls="exa"
alias tree="exa --tree --git-ignore"

alias size="du -sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="/Users/jeynesb/zig/zig-macos-aarch64-0.11.0-dev.2935+ec6ffaa1e/:$PATH"
export PATH="/Users/jeynesb/zig/zig-macos-aarch64-0.11.0-dev.2935+ec6ffaa1e/zls/:$PATH"
