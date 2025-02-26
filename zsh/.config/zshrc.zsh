# Plugins managment logic
source "$ZDOTDIR/zap.zsh"

# Plugins
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"

# Source other config parts
source "$ZDOTDIR/vi-mode.zsh" # vi mode
source "$ZDOTDIR/zshenv.zsh"  # zshenv
source "$ZDOTDIR/aliases.zsh" # aliases

# Set the primary prompt
PROMPT="%F{cyan}%n@%m%f %F{yellow}%~%f %F{green}→ %f"
# Set the right prompt
RPROMPT='%F{red}[%D{%L:%M:%S}]%f'

# Load and initialise completion system
autoload -Uz compinit
compinit
