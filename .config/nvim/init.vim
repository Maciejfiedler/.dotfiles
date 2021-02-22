source $HOME/.config/nvim/vim-plug/plugins.vim
set number
set autoindent
set smartindent
set termguicolors

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
let NERDTreeWinSize = 22

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'vue': ['prettier'],
\}

" Shortcuts
noremap <silent> <C-C> :noh<CR>
noremap <silent> <C-T><C-N> :tabnext<CR>
noremap <silent> <C-C><C-N> :tabnew<CR>
tnoremap <Esc> <C-\><C-n><CR>

