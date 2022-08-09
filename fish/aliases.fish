alias ll='ls -alh'

# Inline MacVim editor
alias vvim='mvim -v'

# Simplify graphic setup process
function newgraphic -d "Create a new TMP graphic in directory" -a dir
  git clone git@github.com:themarshallproject/gfx-v2.git $dir
  cd $dir
  sh setup.sh
end
