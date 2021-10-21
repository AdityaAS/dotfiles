echo "Home directory is: $HOME"

# Setup ohmyzsh first
## Download the ohmyzsh install file
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
## Remove any pre-existing .oh-my-zsh installation
rm -rf .oh-my-zsh
sh install.sh
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting

# Setup dotfiles
rm -rf dotfiles
git clone https://github.com/AdityaAS/dotfiles.git
cp dotfiles/.zshrc .zshrc
cp dotfiles/.aliases .aliases
cp dotfiles/tmux/.tmux.conf .tmux.conf
cp dotfiles/tmux/.tmux_autocomplete .tmux_autocomplete
cp dotfiles/.git-completion .git-completion
cp dotfiles/.gitconfig .gitconfig

