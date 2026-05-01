# Stow xdg-config-home configurations
stow -t ~/.config xdg-config

# Stow home directory config files
stow --dotfiles -t ~ home

# Stow LLM related config files
stow -t ~/.pi/agent pidev
stow -t ~/.gemini gemini-cli
