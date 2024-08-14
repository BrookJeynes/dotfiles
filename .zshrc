# Cleanup $PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

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

# Aliases
alias vim="nvim"
alias tmux="tmux -f $HOME/.config/tmux/.tmux.conf"

alias size="du -sh"
alias ".."="cd .."

alias .external=/home/bjeyn/scripts/.external.sh
alias .lock=/home/bjeyn/scripts/.lock.sh
alias .wiki=/home/bjeyn/scripts/.wiki.sh

alias gw='git config user.email '\''brookjeynes@ssw.com.au'\'' && git config user.name '\''brookjeynes-ssw'\'
alias gp='git config user.email '\''jeynesbrook@gmail.com'\'' && git config user.name '\''BrookJeynes'\'

alias qw='setxkbmap -layout us'
alias cm='setxkbmap -variant colemak_dh'

# Zig
export PATH="$HOME/.zig/current:$PATH"

# https://sw.kovidgoyal.net/kitty/faq/#i-get-errors-about-the-terminal-being-unknown-or-opening-the-terminal-failing-or-functional-keys-like-arrow-keys-don-t-work
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

# Vim mode - https://github.com/softmoth/zsh-vim-mode
source "$HOME/plugins/zsh-vim-mode/zsh-vim-mode.plugin.zsh"
KEYTIMEOUT=1 # https://github.com/softmoth/zsh-vim-mode#keytimeout

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
