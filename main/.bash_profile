# Aliases
alias ll='ls -alh'
# Inline MacVim editor
alias vvim='mvim -v'

# Simplify graphic setup process
function newgraphic() {
  git clone git@github.com:themarshallproject/gfx-v2.git $1
  cd $1
  bash setup.sh
}

function testgraphic() {
  git clone git@github.com:themarshallproject/gfx-v2.git $1
  cd $1
  git checkout github-helpers
  bash setup.sh
}

# Print Git branch in prompt
parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[35m\]\$(parse_git_branch)\[\033[00m\] $ "

eval "$(rbenv init -)"

source /usr/local/bin/virtualenvwrapper.sh

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# Override fzf default command to use ripgrep (excludes files in .gitignore)
export FZF_DEFAULT_COMMAND='rg --files'
