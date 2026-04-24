# starship

eval "$(starship init zsh)"

# lsd

alias ls='lsd'
alias ll='lsd -alF'

# ruby

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# sdkman

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
