echo "Home directory is: $HOME"

# Setup ohmyzsh first
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
rm -rf .oh-my-zsh
sh install.sh
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting

cp ./shell/.zshrc $HOME/.zshrc
