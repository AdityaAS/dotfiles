echo "Home directory is: $HOME"

# Setup ohmyzsh first
wget -P $HOME/ https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
rm -rf $HOME/.oh-my-zsh
sh $HOME/install.sh

git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search $HOME/.oh-my-zsh/plugins/zsh-history-substring-search
# git clone https://github.com/rupa/z.git $HOME/.oh-my-zsh/plugins/z


cp ./shell/.zshrc $HOME/.zshrc
