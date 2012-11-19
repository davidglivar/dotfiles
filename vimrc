set nocompatible

filetype off

" ~~~ VUNDLE ~~~
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
""""""" plugins
Bundle 'kien/ctrlp.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'vim-scripts/The-NERD-Commenter'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-surround'
""""""" syntax
Bundle 'vim-scripts/vim-coffee-script'
Bundle 'tpope/vim-cucumber'
Bundle 'vim-scripts/jade.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'vim-scripts/JSON.vim'
Bundle 'groenewege/vim-less'
Bundle 'vim-scripts/php.vim-for-php5'
Bundle 'tpope/vim-haml'
""""""" colors
Bundle 'endel/vim-github-colorscheme'

filetype plugin indent on
syntax on

" LEADER
let mapleader=','

" NERDTree
nmap <silent> <c-n> :NERDTreeToggle<cr>
nnoremap <silent> <c-t> :NERDTree .<cr>
let NERDTreeStatusline="%{getcwd()}"

let g:Powerline_symbols='fancy'

" handle goofy filetypes
if has("autocmd")
  au BufNewFile,BufRead *.iced set filetype=coffee
  au BufNewFile,BufRead *.pde set filetype=java
  au BufNewFile,BufRead *.jake set filetype=javascript
  au BufNewFile,BufRead Guardfile set filetype=ruby
  au BufNewFile,BufRead Gemfile set filetype=ruby
  autocmd FileType go setlocal shiftwidth=8 tabstop=8 softtabstop=8 background=dark
  autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4
endif

" set the color scheme
set t_Co=256
colorscheme Tomorrow-Night-Eighties
set background=light
set gfn=Menlo:h12

" general settings
set ai
set autoindent
set backspace=indent,eol,start
set cursorline
set cursorcolumn
set expandtab
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set mouse=a
set numberwidth=5
set shiftwidth=2
set showmatch
set smartcase
set smarttab
set so=7
set softtabstop=2
set tabstop=2
set visualbell

" Show line numbers
set relativenumber
set numberwidth=5
nnoremap <leader>- :call ToggleRelativeLineNumber()<cr>
function! ToggleRelativeLineNumber()
  if( &relativenumber == 1  )
    set number
  else
    set relativenumber
  endif
endfunction

" Expand history
set history=1000

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" HTML glitch
let html_no_rendering=1

" Put useful info in status line
set statusline=\ %<%f\ (%{&ft})%=#%n\ %l/%L,%c%V\ 
hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red

" ~~~ MAPPINGS ~~~
noremap <C-c> <Esc>
map <Leader>w :w<cr>
map ,so :so ~/.vimrc<cr>

" Select and Copy a line
nnoremap Y Vy

" Add a line above/below without entering insert mode
nnoremap <c-o> :put =''<cr>
nnoremap <c-i> :put! =''<cr>

" Buffer switching
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" for really long lines
map j gj
map k gk

" move single lines
nnoremap K ddkP
nnoremap J ddp
nnoremap H <<
nnoremap L >>

" moving visual mode selected text
" move blocks
vnoremap K xkP`[V`]
vnoremap J xp`[V`]
vnoremap L >gv
vnoremap H <gv

inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-l> <Right>
inoremap <C-h> <Left>

" ctrl p
let g:ctrlp_map = '<leader>t'
nnoremap <leader>y :CtrlPMRU<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = {
 \ 'dir':  '\.git$\|\.hg$\|\.svn$|node_modules$',
 \ 'file': '\.app$\|\.so$\|\.pyc$\$'
 \ }

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Remap the tab key to do autocompletion or indentation depending on the
" context (from http://www.vim.org/tips/tip.php?tip_id=102)
function! InsertTabWrapper()
  let inserted = TriggerSnippet()
  if inserted == "\<tab>"
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
      return "\<tab>"
    else
      return "\<c-p>"
    endif
  else
    return inserted
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>
