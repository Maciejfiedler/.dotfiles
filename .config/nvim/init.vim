source $HOME/.config/nvim/vim-plug/plugins.vim
set number
set autoindent
set smartindent
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
" Shortcuts
noremap <silent> <C-C> :noh<CR>
