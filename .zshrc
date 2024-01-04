# Cleanup $PATH
# export PATH="/opt/homebrew/bin/:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Remove ZSH history
SAVEHIST=0
HISTSIZE=0

#------------------------------------------------------
# Aliases
#------------------------------------------------------
alias vim="nvim"
alias tmux="tmux -f $HOME/.config/tmux/.tmux.conf"

alias zigup=$HOME/toolchains/zig/update-zig.sh
alias zigdoc="cd $HOME/toolchains/zig/zig/lib/std/ && nvim . && cd -"

alias size="du -sh"
alias ".."="cd .."

# Zig
# export PATH="$HOME/toolchains/zig/zig-macos-aarch64-0.11.0/:$PATH"
export PATH="$(cat "$HOME/.config/zig/.zig")/:$PATH" # Latest Zig version
export PATH="$HOME/toolchains/zig/zls/zig-out/bin/:$PATH" # ZLS

# Rust
export PATH="$HOME/.cargo/bin/:$PATH"

# https://sw.kovidgoyal.net/kitty/faq/#i-get-errors-about-the-terminal-being-unknown-or-opening-the-terminal-failing-or-functional-keys-like-arrow-keys-don-t-work
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

# Vim mode - https://github.com/softmoth/zsh-vim-mode
source "$HOME/plugins/zsh-vim-mode/zsh-vim-mode.plugin.zsh"
KEYTIMEOUT=1 # https://github.com/softmoth/zsh-vim-mode#keytimeout

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Pico-SDK
export PICO_SDK_PATH="$HOME/sdks/pico/pico-sdk"

# Homebrew
export PATH="/opt/homebrew/bin/:$PATH"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun" # bun completions
export PATH="$PATH:/Users/jeynesb/Desktop/bun/build" # development build

# ARM
export PATH="/Applications/ArmGNUToolchain/12.3.rel1/arm-none-eabi/bin/:$PATH"
export CROSS_COMPILE="/Applications/ArmGNUToolchain/12.3.rel1/arm-none-eabi/bin/arm-none-eabi-gcc"
export ARCH=arm

# LLVM
export PATH="/opt/homebrew/opt/llvm@16/bin:$PATH"

# Nix
export PATH="/nix/var/nix/profiles/default/bin/:$PATH"

# pnpm
export PNPM_HOME="/Users/jeynesb/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
