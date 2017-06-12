set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'rking/ag.vim'

Plugin 'bronson/vim-trailing-whitespace'

" clojure plugins
Plugin 'jpalardy/vim-slime'

Plugin 'tpope/vim-fireplace'

Plugin 'guns/vim-clojure-static'

Plugin 'kien/rainbow_parentheses.vim'

" =======

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'jgdavey/tslime.vim'

Plugin 'tpope/vim-obsession'

Plugin 'elzr/vim-json'

Plugin 'christoomey/vim-system-copy'

Plugin 'gaogao1030/vim-skim'

" Plugin 'easymotion/vim-easymotion'

Plugin 'bling/vim-airline'

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive.git'

Plugin 'airblade/vim-gitgutter'

Plugin 'bbatsov/rubocop'

Plugin 'ngmy/vim-rubocop'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-repeat'

Plugin 'vim-ruby/vim-ruby'

Plugin 'mattn/emmet-vim'

Plugin 'Raimondi/delimitMate'

Plugin 'pangloss/vim-javascript'

Plugin 'briancollins/vim-jst'

Plugin 'mxw/vim-jsx'

Plugin 'othree/html5.vim'

Plugin 'tpope/vim-commentary'

Plugin 'scrooloose/nerdtree'

Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'flazz/vim-colorschemes'

Plugin 'chrisbra/csv.vim'

Plugin 'thoughtbot/vim-rspec'

Plugin 'slim-template/vim-slim'

Plugin 'alessandroyorba/monrovia'

Plugin 'junegunn/goyo.vim'

Plugin 'tyrannicaltoucan/vim-quantum'

Plugin 'rhysd/committia.vim'

Plugin 'elixir-lang/vim-elixir'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>


set noswapfile
set laststatus=2

let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'

set clipboard=unnamed

nmap ,n :NERDTreeFind<CR>

let g:tslime_always_current_session = 1 
let g:tslime_always_current_window = 1

let g:solarized_termcolors=256
" set background=light
syntax enable
colorscheme molokai
" colorscheme quantum

" let g:quantum_black = 1

" set background=dark

let g:jsx_ext_required = 0

" let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline_powerline_fonts = 1

let g:html_indent_inctags = "html,body,head,tbody, ul, li, article, aside, section, div, title, body, h1, h2, h3, h4, meta, p"

let javascript_enable_domhtmlcss = 1

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

set number
let mapleader = "\<Space>"

nmap 0 ^
nmap <leader>w <C-w>
nmap <leader>w<Space>r <C-w><C-r>
nmap <leader>r <C-r>
nmap <leader>z :w<Enter><C-z>
" nmap <leader>t <C-t>
" fugitive git bindings
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
noremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>

map k gk
nmap j gj

imap <C-e> <C-h>

" insert comments in insert mode with vim-commentary
imap gcc jpq<Esc>gccfjciw

"  Ctrl-S to save
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" Escape alternatives
imap jj <Esc><C-S>
imap jk <Esc>o
imap jl <Esc>O


"    From
"    https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode
"    Allows for better pasting
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
	set pastetoggle=<Esc>[201~
	set paste
	return ""
endfunction
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

map <leader>\ :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
nmap <leader>[] :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" set statusline+=%#warningmsg#
" set statusline+=%*

nmap <leader>q :q<Enter>
nmap <leader>e :e#<Enter>
nmap <leader>m :tabe $MYVIMRC<Enter>
nmap <leader>S :so $MYVIMRC<Enter>
nmap <Leader>P :PluginInstall<Enter>

nmap <leader>vp ggVGp

nmap <leader>y :%y+<Enter>
nmap <leader>= mcgg=G<Enter>'c
nmap c_ ct_
nmap d_ dt_
nmap c) ct)
nmap c( ct(
nmap d) dt)
nmap d( dt(

nmap <leader>0 :tabmove 0<Enter>
nmap <leader>1 :tabmove 1<Enter>
nmap <leader>2 :tabmove 2<Enter>
nmap <leader>3 :tabmove 3<Enter>
nmap <leader>4 :tabmove 4<Enter>
nmap <leader>5 :tabmove 5<Enter>
nmap <leader>6 :tabmove 6<Enter>
nmap <leader>7 :tabmove 7<Enter>
nmap <leader>8 :tabmove 8<Enter>
nmap <leader>9 :tabmove 9<Enter>


" color configurations
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

hi MatchParen cterm=none ctermbg=green ctermfg=blue

:nnoremap <Leader>cs :set cursorline! cursorcolumn!<CR>

au FocusGained,BufEnter * :silent! !
" au FocusLost,WinLeave * :silent! w
au FocusLost,WinLeave * :silent! update

map <Leader>a :Ag<Space>

nmap <Leader><Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader><Leader>s :call RunNearestSpec()<CR>
nmap <Leader><Leader>a :call RunAllSpecs()<CR>
nmap <Leader>s :call Send_to_Tmux("\n")<Left><Left><Left><Left>
nmap <Leader>rts <Plug>SetTmuxVars
nnoremap <silent> <leader>l :exec &number == 0 ? "set number norelativenumber" : "set relativenumber nonumber"<cr>
nmap <Leader>pp :call Send_to_Tmux("\n")<Left><Left><Left><Left><C-r>%<CR>

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"

set lazyredraw

set clipboard=unnamedplus

nmap <Leader>wh :FixWhitespace<CR>
nnoremap ,i i_<Esc>r
nnoremap ,a a_<Esc>r
nmap <Leader>cw :let @*=expand("%:p")<cr>
nmap <Leader>G :Goyo<Enter>:so $MYVIMRC<Enter>
nmap <silent> ,s "=nr2char(getchar())<cr>P

" You can get the information about the windows with first argument as a dictionary.
"
"   KEY              VALUE                      AVAILABILITY
"-----------------------------------------------------------------------------------
"   vcs            : vcs type (e.g. 'git')   -> all hooks
"   edit_winnr     : winnr of edit window    -> ditto
"   edit_bufnr     : bufnr of edit window    -> ditto
"   diff_winnr     : winnr of diff window    -> ditto
"   diff_bufnr     : bufnr of diff window    -> ditto
"   status_winnr   : winnr of status window  -> all hooks except for 'diff_open' hook
"   status_bufnr   : bufnr of status window  -> ditto

let g:committia_hooks = {}
function! g:committia_hooks.edit_open(info)
    " Additional settings
    setlocal spell

    " If no commit message, start with insert mode
    if a:info.vcs ==# 'git' && getline(1) ==# ''
        startinsert
    end

    " Scroll the diff window from insert mode
    " Map <C-n> and <C-p>
    imap <buffer><C-n> <Plug>(committia-scroll-diff-down-half)
    imap <buffer><C-p> <Plug>(committia-scroll-diff-up-half)

endfunction

