call pathogen#infect()

" solarized
let g:solarized_contrast="high"
colo solarized

" Highlight 79th column
set colorcolumn=79

" Tabs switching
map th :tabprev<CR>
map <C-S-Tab> :tabprev<CR>
map tl :tabnext<CR>
map <C-Tab> :tabnext<CR>
map tn :tabnew <CR>
map td :tabclose<CR>

" Enable mouse
set mouse=a

" Make it a sane editor
set incsearch
set number
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4

" Show status line always
set laststatus=2

" Some info in the status line
set statusline=%<%f\ %h%m%r%#warningmsg#%{SyntasticStatuslineFlag()}%*%=%-14.(%l,%c%V%)\ %P

" remove trailing space
map <leader>rts :%s/\s\+$//e<CR>

" .tac files are Python
au BufNewFile,BufRead *.tac set filetype=python

" Detect file types
filetype plugin on
filetype indent plugin on
setlocal ofu=syntaxcomplete#Complete
syntax on

" Tagbar
map <leader>t :TagbarToggle<CR>
set updatetime=1000
map <F7> :!ctags -R<CR>

" Open tag in new tab on C-\
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" by default show tag selection on multiple options
nnoremap <C-]> g<C-]>
vnoremap <C-]> g<C-]>
nnoremap g<C-]> <C-]>
vnoremap g<C-]> <C-]>


" This is a must :-)
map <C-c> <Esc>

" GUI options
set guicursor+=a:blinkon0
set guifont=Menlo\ Regular:h10
set guioptions-=T
set guioptions-=m
set guioptions+=LlRrb
set guioptions-=LlRrb
set linespace=2

" CtrlP settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'


" lets browse supertab in natural order, not reverse
let g:SuperTabDefaultCompletionType = "<c-n>"

" DetectIndent settings
autocmd BufReadPost * :DetectIndent
let g:detectindent_preferred_expandtab = 1
let g:detectindent_preferred_indent = 4

let g:syntastic_always_populate_loc_list=1

" open NERDTree
map <leader>n :NERDTreeToggle<CR>
