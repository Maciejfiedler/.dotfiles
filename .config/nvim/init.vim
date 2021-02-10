source $HOME/.config/nvim/vim-plug/plugins.vim
set number
set autoindent
set smartindent
set termguicolors

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
" Shortcuts
noremap <silent> <C-C> :noh<CR>
