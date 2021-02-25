" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'itchyny/lightline.vim'
    Plug 'mhinz/vim-startify'
    Plug 'neoclide/coc.nvim'
    Plug 'lilydjwg/colorizer'
    Plug 'justinmk/vim-sneak'
    Plug 'liuchengxu/vim-which-key'
    Plug 'w0rp/ale'
    Plug 'junegunn/fzf.vim'
    Plug 'shougo/deol.nvim'

    call plug#end()
