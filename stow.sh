# Stow xdg-config-home configurations
stow -t ~/.config xdg-config

# Stow home directory config files
stow --dotfiles -t ~ home

# Stow workplace configs with:
# stow --dotfiles -t ~ workhome
