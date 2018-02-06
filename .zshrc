# fpath
fpath=( "$HOME/.zfunctions" $fpath)

### Theme
# 256 color
export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color
autoload -U promptinit; promptinit   # prompt support
autoload -Uz compinit; compinit      # suggestion support
prompt pure                          # prompt - pure via https://github.com/sindresorhus/pure

# asdf-vm/asdf
[ -f ~/.asdf/asdf.sh ] && source ~/.asdf/asdf.sh
[ -f ~/.asdf/completions/asdf.bash ] && source ~/.asdf/completions/asdf.bash

# junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# athityakumar/colorls
[ -f "$(dirname $(gem which colorls))/tab_complete.sh" ] && source $(dirname $(gem which colorls))/tab_complete.sh

# load additional zsh config files
[[ -f ~/.zshrc.exports ]] && source ~/.zshrc.exports
[[ -f ~/.zshrc.history ]] && source ~/.zshrc.history
[[ -f ~/.zshrc.options ]] && source ~/.zshrc.options
[[ -f ~/.zshrc.aliases ]] && source ~/.zshrc.aliases
[[ -f ~/.zshrc.correct ]] && source ~/.zshrc.correct
[[ -f ~/.zshrc.history ]] && source ~/.zshrc.history
[[ -f ~/.zshrc.functions ]] && source ~/.zshrc.functions

# zsh-users/zsh-syntax-highlighting (must be sourced last in .zshrc)
[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# custom path
[[ -f ~/.zshrc.path ]] && source ~/.zshrc.path
