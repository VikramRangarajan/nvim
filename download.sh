# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh
mkdir -p lazygit_stuff ~/.local/bin

# Install neovim
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.appimage -O ~/.local/bin/nvim # should be neovim 0.12
chmod u+x ~/.local/bin/nvim

# Install lazygit
wget https://github.com/jesseduffield/lazygit/releases/download/v0.59.0/lazygit_0.59.0_linux_x86_64.tar.gz
mkdir lazygit_stuff
tar -xvzf lazygit_0.59.0_linux_x86_64.tar.gz -C lazygit_stuff
mv lazygit_stuff/lazygit ~/.local/bin
rm -r lazygit*

# Install ruff
uv tool install ruff

# Install ripgrep
wget https://github.com/BurntSushi/ripgrep/releases/download/15.1.0/ripgrep-15.1.0-x86_64-unknown-linux-musl.tar.gz
mkdir ripgrep_stuff
tar -xvzf ripgrep-15.1.0-x86_64-unknown-linux-musl.tar.gz -C ripgrep_stuff/
mv ripgrep_stuff/ripgrep-15.1.0-x86_64-unknown-linux-musl/rg ~/.local/bin
rm -r ripgrep*

# Install starship
curl -sS https://starship.rs/install.sh | sh -s -- -b ~/.local/bin -y
echo 'eval "$(starship init bash)"' >> ~/.bashrc
