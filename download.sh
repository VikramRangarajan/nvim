mkdir -p lazygit_stuff ~/.local/bin
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.appimage -O ~/.local/bin/nvim # should be neovim 0.12
chmod u+x ~/.local/nvim
wget https://github.com/jesseduffield/lazygit/releases/download/v0.59.0/lazygit_0.59.0_linux_x86_64.tar.gz
tar -xvzf lazygit_0.59.0_linux_x86_64.tar.gz -C lazygit_stuff
mv lazygit_stuff/lazygit ~/.local/bin
rm -r lazygit*
