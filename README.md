# dotfiles-etc

Setting up a new computer:
* Install [Homebrew](https://brew.sh/)
* Install Brewfile: `brew bundle install`
* Install Macvim: https://macvim.org/ (I usually do this via the
  official binary release, could potentially do via Homebrew in the
  future)
* [Add github SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

Set fish (Homebrew install) as default shell:
* Add Homebrew fish to available shells: `echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells`
* Set as default login shell: `chsh -s /opt/homebrew/bin/fish`

Other stuff:
* Map caps lock key to escape (System Preferences > Keyboard > Keyboard
  Shortcuts > Modifier Keys) — this happens on a per-keyboard basis
