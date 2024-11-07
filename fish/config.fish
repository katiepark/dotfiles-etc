source ~/.config/fish/aliases.fish

# Load rbenv and set up path
set PATH /Users/admin/.rbenv/shims $PATH
status --is-interactive; and . (rbenv init -|psub)

# Set up fzf key bindings
fzf --fish | source
# Override fzf default command to use ripgrep (excludes files in .gitignore)
export FZF_DEFAULT_COMMAND='rg --files'

# Init pyenv
pyenv init - | source
