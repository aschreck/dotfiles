
# install plugin manager

(this is one command)
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# create a symbolic link from dotfile to init.vim

ln -sf ~/dotfiles/init.vim ~/.config/nvim/init.vim
