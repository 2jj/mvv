let mapleader="\<BS>"
set hidden


set history=1000
set ignorecase
set smartcase
set undofile
set undolevels=1000
set undoreload=10000
set noshowcmd
set noruler
syntax on
set mouse=a

set incsearch
set scrolljump=5
set scrolloff=5
set hlsearch
set list
set fillchars=stl:\ 
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction
function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?''.l:branchname.' ':''
endfunction
set statusline=%{StatuslineGit()}
set statusline+=\ %t%m%r\ %{coc#status()}\ %f\ \ %c,%l/%L\ \ %p%%\ ---
set conceallevel=0
set cmdheight=1
set nu

set autoindent
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2
set nojoinspaces
set splitright
set splitbelow

nnoremap <leader>o :set invpaste paste?<CR>
autocmd InsertLeave * set nopaste"
set showmode
map <leader><leader> :b#<CR>
noremap $ $l
map j gj
map k gk
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zi
nnoremap g* g*zz
nnoremap g# g#zz
function! CenterSearch()
  let cmdtype = getcmdtype()
  if cmdtype == '/' || cmdtype == '?'
    return "\<enter>zz"
  endif
  return "\<enter>"
endfunction
cnoremap <silent> <expr> <enter> CenterSearch()
inoremap jk <Esc>
map <leader>h <C-w>v<C-w>h
map <leader>j <C-w>s
map <leader>k <C-w>s<C-w>k
map <leader>l <C-w>v
map <leader>x <C-w>q
map <leader>q :qa<Enter>
nmap <Home> _
imap <Home> _
nmap <Home> _

color slate
