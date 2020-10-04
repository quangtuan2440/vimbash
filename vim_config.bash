# make the pack folder a git repository
cd ~/.vim/pack
git init

#git submodule add https://github.com/scrooloose/nerdtree plugins/start/nerdtree
#git submodule add https://github.com/Xuyuanp/nerdtree-git-plugin plugins/start/nerdtree-git-plugin

# lets also add the one color scheme in the colors/ directory

# colorscheme
git submodule add https://github.com/rakr/vim-one.git colors/start/one

# plugins
git submodule add https://github.com/junegunn/fzf.vim.git plugins/start/fzf
git submodule add https://github.com/itchyny/lightline.vim.git plugins/start/lightline
git submodule add https://github.com/tpope/vim-surround.git plugins/start/vim-surround
git submodule add https://github.com/neoclide/coc.nvim.git plugins/start/coc

# syntax
git submodule add https://github.com/pangloss/vim-javascript.git syntax/start/vim-javascript

# comment
git submodule add https://github.com/preservim/nerdcommenter.git comment/start/nerdcommenter

# and optinaly, we want the elixir syntax and compiler tools under syntax/
#git submodule add https://github.com/elixir-lang/vim-elixir syntax/opt/elixir

# start vim and configure the plugins as desired :)
#cd -
#vim ~/.vimrc

# when need to update,
# it is just a matter of updating submodules
#git submodule update --remote --merge
#git commit

# config fzf to ignore files in .gitignore
sudo apt install silversearcher-ag

echo export FZF_DEFAULT_COMMAND=\'ag -p ~/.gitignore -g \"\"\'>>~/.bashrc

# checkout coc to release branch
cd ~/.vim/pack/plugins/start/coc
git checkout release

