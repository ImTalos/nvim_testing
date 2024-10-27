#/bin/bash

# the files setups neovim into the machine
# also, file extracts all neovim and all its dependencies
#

#tar xzvf lazy.nvim.tar.gz 
#tar xzvf nvim-linux64.tar.gz 
#ln -s nvim-linux64/bin/nvim /usr/bin/nvim
export LAZYVIM_PATH=$(pwd)/lazy.nvim
export NVIM_PATH=$(pwd)/
cp -r config/. $HOME/.config/nvim/


