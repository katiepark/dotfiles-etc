alias ll='ls -alh'

# Inline MacVim editor
alias vvim='mvim -v'

# Remove merged branches
alias rmbr="git branch --merged | egrep -v \"(^\*|main)\" | xargs git branch -d"

# Simplify graphic setup process
function newgraphic -d "Create a new TMP graphic in directory" -a dir
  git clone git@github.com:themarshallproject/gfx-v2.git $dir
  cd $dir
  sh setup.sh
end
