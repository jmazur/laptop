# setup a fresh laptop
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/main/mac
sh mac 2>&1 | tee ~/laptop.log

# tig
brew install tig

# claude code
curl -fsSL https://claude.ai/install.sh | bash



# setup zsh
chsh -s $(which zsh)

# setup local dotfiles (adjust to your repo)
git clone git@github.com:jmazur/dotfiles.git ~/dotfiles-local

# setup dotfiles
git clone git@github.com:thoughtbot/dotfiles.git ~/dotfiles
env RCRC=$HOME/dotfiles/rcrc rcup
