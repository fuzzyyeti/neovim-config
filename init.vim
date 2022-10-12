set number
set ts=2
set sw=2
set rtp+=/opt/homebrew/bin/fzf

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'

Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/cmp-nvim-lsp'

Plug 'hrsh7th/nvim-cmp'

Plug 'preservim/nerdtree'

Plug 'https://github.com/tpope/vim-surround'

Plug 'EdenEast/nightfox.nvim'

Plug 'preservim/nerdcommenter'

call plug#end()

lua require('lsp.cmp')
lua require('lsp.typescript')

nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gn <cmd>lua vim.lsp.buf.rename('dog')<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

nnoremap <silent> <C-l> <cmd>:Files<CR>
nnoremap <silent> <C-t> <cmd>:NERDTreeFind<CR>
nmap <leader>v :e C:\Users\mmccarn\AppData\Local\nvim\init.vim<CR>
nmap <leader>b :Buffer<CR>

colorscheme nightfox

let g:NERDCreateDefaultMappings = 1
