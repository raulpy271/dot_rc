
" general config
colorscheme elflord
set nu
set relativenumber
set cursorline
set laststatus=2
set hlsearch! 
set wrap linebreak

" tabs
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4

" my plugin
set runtimepath+=/usr/share/vim/vim82/myPlugins/indentLine/after/plugin
set runtimepath+=/home/raul/.vim/plugins/
set runtimepath+=/home/raul/.vim/plugins/tabnine-vim/
set runtimepath+=/home/raul/.vim/plugins/nerdtree/
set runtimepath+=/home/raul/.vim/plugins/tagbar/
set runtimepath+=/home/raul/.vim/plugins/vim-jsx/
set runtimepath+=/home/raul/.vim/plugins/vim-jsx/after/
set runtimepath+=/home/raul/.vim/plugins/vim-jsx/autoload/
set runtimepath+=/home/raul/.vim/plugins/indentLine/after/
let g:indentLine_color_term = 1
set runtimepath+=/home/raul/.vim/plugins/spelunker/autoload/

" shortcuts
cnorea s_pt set spell spelllang=pt_BR
cnorea nos  set nospell
nmap <F8> :TagbarToggle<CR>
nnoremap <F12> :NERDTreeToggle<CR>
cnorea remove_number :set relativenumber! | :set nu!
" Open terminal in the left side :lt
cnoremap lt vertical terminal <CR><c-w>20<
" Open terminal in the right side :rt
cnoremap rt vertical terminal <CR><c-w>r<c-w>20<


" read config file of in the escopo of a local project
silent! so! *.vimlocal

