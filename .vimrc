" My vimrc

scriptencoding utf-8

if &compatible
  set nocompatible               " Be iMproved
endif

filetype plugin indent on
syntax enable

" 基本設定 {{{1
augroup MyAutoCmd
  autocmd!
augroup END

let g:mapleader = ','
let g:maplocalleader = ' '

" 全角文字の幅
set ambiwidth=double

" 行番号を表示
set number

" コマンドラインを便利に
set wildmenu

" 大文字小文字を区別しない
set ignorecase
set smartcase

" 検索結果をハイライト
set hlsearch

" ビープ音をvisualbellに
set visualbell

" current directoryを自動移動
augroup MyAutoCmd
  autocmd BufEnter * silent! lcd %:p:h
augroup END

" insertモードでEmacs風のカーソル移動
inoremap <C-f> <Right>
inoremap <C-b> <Left>

" インデントの深さ
set tabstop=4
set softtabstop=4
set shiftwidth=4
" ソフトタブ
set expandtab

augroup MyAutoCmd
  autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType tex setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType eruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType haml setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType sh setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

" いらないキーを無効化
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>
nnoremap Q <Nop>

" jkで表示上の行を動くように
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" spell check
set spelllang=en,cjk
