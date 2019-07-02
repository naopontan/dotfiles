if &compatible
  set nocompatible               " Be iMproved
endif

"------------------------------------
" matchit.vim
" % キーによる括弧の対応ジャンプ
"------------------------------------
"source $VIMRUNTIME/macros/matchit.vim

"------------------------------------
" Basic
"------------------------------------
let mapleader="," " <Leader>キー
"set scrolloff=5 " スクロール時の余白確保
"set textwidth=0 " 自動で折り返しをしない
"set autoread " 自動読み直し
"set hidden " 編集中でも他のファイルを開けるようにする
"set backspace=indent,eol,start "バックスペースキーで削除できるものを指定
"set formatoptions=lmoq "テキスト整形オプション，マルチバイト系を追加
"set vb t_vb= " ビープ音を鳴らさない
"set browsedir=buffer " Exploreの初期ディレクトリ
"set whichwrap=b,s,h,l,<,>,[,] " カーソルを行頭、行末で止まらないようにする
set showcmd " コマンドをステータス行に表示
set showmode " 現在のモードを表示
"set modelines=0 " モードラインは無効
set binary noendofline

"------------------------------------
" Show
"------------------------------------
set title " タイトルを表示する
set ruler " ルーラーを表示
set laststatus=2 " 常にステータラスラインを表示
set showmatch " 対応する括弧をハイライト
set number " 行番号表示
set list " 不可視文字表示
set listchars=tab:>\ ,extends:<
"" 全角スペースの表示
"highlight ZenkakuSpace cterm=underline ctermfg=red guibg=darkgray
"match ZenkakuSpace /　/
set cursorline " カーソル行をハイライト
"set ttyfast " 高速ターミナル接続を行う
"set paste " vim-endwiseが効かない see -> https://github.com/tpope/vim-endwise/issues/15

"------------------------------------
" Color
"------------------------------------
syntax enable " ハイライト on
"colorscheme molokai " colorscheme
"
"if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
"  set t_Co=256
"endif

" ステータスライン
"hi StatusLine gui=NONE guifg=Black guibg=Green cterm=NONE ctermfg=Black ctermbg=Blue	" アクティブなステータスライン
"hi StatusLineNC gui=NONE guifg=Black guibg=Green cterm=NONE ctermfg=Black ctermbg=Blue	" 非アクティブなステータスライン


"------------------------------------
" Clipboard
"------------------------------------
"set clipboard=unnamed " コピーしたものがレジスタにも入るようにする
"set clipboard=autoselect " ビジュアルモードで選択したテキストが、クリップボードに入るようにする
"set clipboard+=autoselect,unnamed " clipboard

"------------------------------------
" Indentation
"------------------------------------
"set autoindent " 自動でインデント
set smartindent " 新しい行のインデントを現在行と同じ数に
"set smarttab

set expandtab " タブ文字を使わない
"set tabstop=2
"set shiftwidth=2
set nowrapscan  " 検索で最初に戻らない

if has("autocmd")
  "autocmd FileType * set formatoptions-=ro " 改行時にコメントしない
  "
  "" expandtab = et タブ文字を空白に展開する
  "" tabstop = ts ファイル内の <Tab> が対応する空白の数
  set softtabstop=2 " タブキーを押したときに挿入される空白の量
  "" shiftwidth = sw 自動インデントの各段階に使われる空白の数
  "
  "autocmd FileType php        setlocal ts=2 sts=2 sw=2 noexpandtab
  "autocmd FileType c          setlocal ts=4 sw=4 noexpandtab cindent
  "autocmd FileType java       setlocal ts=4 sts=4 sw=4 et
  "autocmd FileType sh         setlocal ts=2 sts=2 sw=2 et
  "autocmd FileType sql        setlocal ts=2 sts=2 sw=2 et
  "autocmd FileType scss       setlocal ts=2 sts=2 sw=2 et
  "autocmd FileType coffee     setlocal ts=2 sts=2 sw=2 et nowrap
  "autocmd FileType html,xhtml,css,javascript      setlocal ts=2 sts=2 sw=2 et
  "
  "autocmd BufNewFile,BufRead *.html  setlocal ft=xhtml
  "autocmd BufNewFile,BufRead *.scss  setlocal ft=scss
  "autocmd BufRead,BufNewFile *.coffee setlocal ft=coffee
  "autocmd BufNewFile,BufRead *.sass  setfiletype sass
  "
  "" for rails
  autocmd BufNewFile,BufRead app/*/*.erb    setlocal ft=eruby fenc=utf-8
  autocmd BufNewFile,BufRead app/**/*.rb    setlocal ft=ruby  fenc=utf-8
  autocmd BufNewFile,BufRead app/**/*.yml   setlocal ft=ruby  fenc=utf-8
  autocmd FileType ruby,haml,eruby,sass,cucumber,mason setlocal ts=2 sts=2 sw=2 et nowrap
  "
  ""autocmd BufWritePost *.coffee silent CoffeeMake! -cb | cwindow | redraw!
endif

"------------------------------------
" Search
"------------------------------------
set incsearch " インクリメンタルサーチ
"set ignorecase " 大文字小文字無視
"set smartcase " 大文字は区別する
set hlsearch " 検索文字をハイライト
"nmap \q :nohlsearch<CR>

"------------------------------------
" Complete
"------------------------------------
set wildmenu " コマンド補完を強化
"set wildchar=<tab> " コマンド補完開始キー
"set wildmode= " 最初のマッチのみ
"set wildmode=full " TABを押すごとに次のマッチを補完する。wildmenuが有効ならwildmenuを開始する
"set wildmode=longest " 共通する最長の部分まで補完する
"set wildmode=list " マッチするものをリスト表示する
"set wildmode=longest:full " longestと同じだが、wildmenuが有効ならwildmenuを開始する
"set wildmode=list:full "マッチするものをリスト表示しつつ、TABを押すごとに次のマッチを補完
"set wildmode=list:longest " リスト表示 ※お気に入り
"set wildmode=longest,full " http://boscono.hatenablog.com/entry/2013/11/17/230740
"set history=1000 " コマンド・検索パターン履歴数
"set complete+=k " 補完に辞書ファイル追加

"------------------------------------
" Buffer
"------------------------------------
"noremap <Space> :bn!<CR>
"noremap <S-Space> :bp!<CR>
":com! Kwbd let kwbd_bn= bufnr("%")|enew|exe "bdel ".kwbd_bn|unlet kwbd_bn " ウィンドウレイアウトを崩さないでバッファを閉じる

"------------------------------------
" Other
"------------------------------------

" .vimrcや.gvimrcを編集するためのKey-mappingを定義する
"nnoremap <silent> <Space>ev  :<C-u>edit $MYVIMRC<CR>
"nnoremap <silent> <Space>eg  :<C-u>edit $MYGVIMRC<CR>

" insert mode での移動
inoremap  <C-e> <END>
inoremap  <C-a> <HOME>
" インサートモードでもhjklで移動
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-h> <Left> " この設定を有効にしてたの忘れてハマった
"inoremap <C-l> <Right>

" インサートモードでのEsc
"inoremap <silent> jj <ESC>
inoremap <silent> <C-j> <ESC>
"inoremap <silent> <C-[> <ESC> " これ有効にしたら、 insert モード時のペーストがうまく機能しない(T_T)

" ビジュアルモード時vで行末まで選択
"vnoremap v $h

" <C-l> でハイライトを消す
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>


nnoremap <Leader>w :w<CR> " 保存
nnoremap <Leader>q :q<CR> " quit
nnoremap <Leader>Q :wq<CR> " 保存&quit
nnoremap <Leader>n :set invnumber<CR> " 行番号表示のトグル

" tagsジャンプの時に複数ある時は一覧表示
nnoremap <C-]> g<C-]>

"------------------------------------
" NERDTree
"------------------------------------
nmap <Leader>e :NERDTreeToggle<CR>
let g:NERDTreeShowBookmarks=1

function s:MoveToFileAtStart()
  call feedkeys("\<C-w>l")
endfunction
autocmd VimEnter *  NERDTree|call s:MoveToFileAtStart()

"autocmd vimenter * NERDTree|normal gg3j

"他のバッファをすべて閉じた時にNERDTreeが開いていたらNERDTreeも一緒に閉じる。
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif"

"------------------------------------
" NERDTree-iterm
"------------------------------------
"let g:nerdtree_iterm_iterm_version = 3

"------------------------------------
" neosnippet
"------------------------------------
" Plugin key-mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Tell Neosnippet about the other snippets

" スニペット集
"let g:neosnippet#snippets_directory='~/dotfiles/.vim/snippets'
let g:neosnippet#snippets_directory='~/.cache/dein/repos/github.com/Shougo/neosnippet-snippets/neosnippets'

" ------------------------------------
" grep.vim
"------------------------------------
" 検索外のディレクトリ、ファイルパターン
"let Grep_Skip_Dirs = '.svn .git'
"let Grep_Skip_Files = '*.bak *~'

" 横分割時は下へ､ 縦分割時は右へ新しいウィンドウが開くようにする
"set splitbelow
set splitright

"------------------------------------
" emmit.vim
"------------------------------------
"let g:user_emmet_leader_key='<C-Z>'
let g:user_emmit_install_global = 0
autocmd FileType html,css EmmetInstall

"------------------------------------
" unite.vim
"------------------------------------
" The prefix key.
nnoremap    [unite]   <Nop>
nmap    <Leader>f [unite]

"" バッファ一覧
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
"" ファイル一覧
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"" ブックマーク一覧
"nnoremap <silent> [unite]c :<C-u>Unite bookmark<CR>
"" 最近使ったファイルの一覧
"nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
"" 最近使ったファイルとバッファ
"nnoremap <silent> [unite]u :<C-u>Unite buffer file_mru<CR>
"" レジスタ一覧
"nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
"" 全部
"nnoremap <silent> [unite]a :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>

" ESCキーを2回押すと終了する
"au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
"au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

" --- takaesu. true color を使う
set termguicolors

"dein Scripts-----------------------------

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" プラグインがインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイルを用意しておく
  " TODO: 以下で "~/.config/nvim/" と、 nvim のフォルダになってるのはご愛嬌。
  let g:rc_dir    = expand("~/.config/nvim/")
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"------------------------------------
" vim-submode
"------------------------------------
"https://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
call submode#enter_with('bufmove', 'n', '', '<C-w>>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', '<C-w><', '<C-w><')
call submode#enter_with('bufmove', 'n', '', '<C-w>+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', '<C-w>-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')
