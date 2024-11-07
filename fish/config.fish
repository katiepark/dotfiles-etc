source ~/.config/fish/aliases.fish

# Load rbenv and set up path
fish_add_path /Users/admin/.rbenv/shims
status --is-interactive; and . (rbenv init -|psub)

# Set up fzf key bindings
fzf --fish | source
# Override fzf default command to use ripgrep (excludes files in .gitignore)
export FZF_DEFAULT_COMMAND='rg --files'
