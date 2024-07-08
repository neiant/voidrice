" init.vim
let mapleader =","

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" faster init
"
" :h feature-list
"
if has("mac")
	let g:python3_host_prog= "/opt/homebrew/bin/python3"
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
" Plug 'https://github.com/tpope/vim-rsi' " esc etc issues fix
"Plug 'https://github.com/tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'https://github.com/mboughaba/i3config.vim'
"Plug 'jreybert/vimagit'
"Plug 'lukesmithxyz/vimling'
Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/chrisbra/csv.vim', { 'for': 'csv' } " extension for vim-airline to show current column for csv files
Plug 'tpope/vim-commentary'
" autocompletion. the `--all` flag might be used to install all support. more info @ https://valloric.github.io/YouCompleteMe/#installation
" https://github.com/Valloric/YouCompleteMe/
" note - this is somewhat cumbersome to setup.
" For dank autocompletions, the following packages need to be installed:
" pacman -S cmake vim python python-pip python2-pip cmake rust go nodejs yarn ruby-irb mono
" or
" brew install cmake vim python cmake rust go nodejs yarn mono
"
" dos2unix /usr/share/vim/vimfiles/plugin/youcompleteme.vim
"
" See also https://github.com/kiprasmel/LARBS/blob/master/do-it-yourself/vim
"
""Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all ' }
""Plug 'Valloric/YouCompleteMe', { 'do': 'sudo ./install.py --ts-completer --go-completer --cs-completer --clangd-completer --rust-completer' }
" Plug 'Valloric/YouCompleteMe', { 'do': 'sudo ./install.py --ts-completer --go-completer --clangd-completer' }
" Plug 'https://github.com/ternjs/tern_for_vim' " Related to YouCompleteMe

"Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
"Plug 'https://github.com/jackguo380/vim-lsp-cxx-highlight'

"Plug 'https://github.com/rdnetto/YCM-Generator', { 'branch': 'stable'} "  
"Plug 'https://github.com/jalvesaq/nvim-r.git'
"Plug 'editorconfig/editorconfig-vim'
"Plug 'wakatime/vim-wakatime' " self-hosted, see https://github.com/muety/wakapi

Plug 'https://github.com/tpope/vim-repeat'

Plug 'https://github.com/vim-scripts/ingo-library'
Plug 'https://github.com/vim-scripts/JumpToLastOccurrence' " ,f<char> to jump to last char, etc

Plug 'https://github.com/xuhdev/vim-latex-live-preview', { 'for': 'tex' } " :LLPStartPreview
Plug 'https://github.com/lervag/vimtex'

"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'

Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/rust-lang/rust.vim'
Plug 'https://github.com/rstacruz/vim-closer'
Plug 'https://github.com/tpope/vim-unimpaired'
Plug 'https://github.com/stevearc/vim-arduino'
"Plug 'https://github.com/luochen1990/rainbow'
"Plug 'https://github.com/jpalardy/vim-slime'
" Plug 'https://github.com/numirias/semshi', {'do': ':UpdateRemotePlugins'}
"Plug 'https://github.com/liuchengxu/vista.vim'
Plug 'https://github.com/sheerun/vim-polyglot'
" Plug 'https://github.com/matze/vim-move' " custom defines instead
Plug 'https://github.com/skywind3000/asyncrun.vim'
Plug 'https://github.com/skywind3000/vim-terminal-help'
"Plug 'https://github.com/kassio/neoterm'
Plug 'https://github.com/sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
Plug 'https://github.com/tommcdo/vim-exchange'
"Plug 'https://github.com/mkitt/tabline.vim' " tabs
"Plug 'https://github.com/romgrk/barbar.nvim'
Plug 'https://github.com/christoomey/vim-tmux-navigator'
Plug 'https://github.com/machakann/vim-sandwich'
Plug 'https://github.com/wellle/tmux-complete.vim'
Plug 'https://github.com/liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
" color display like #0FFFFF & hsl(120, 100%, 50%)
"Plug 'https://github.com/RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
" Plug 'https://github.com/justinmk/vim-sneak'
Plug 'https://github.com/mbbill/undotree'
Plug 'https://github.com/rhysd/git-messenger.vim'

Plug 'https://github.com/phaazon/hop.nvim'

""" Themes
Plug 'https://github.com/romgrk/doom-one.vim'
"  https://github.com/kiprasmel/doom-one.vim

Plug 'https://github.com/joshdick/onedark.vim'

"" TODO: https://github.com/peitalin/vim-jsx-typescript
""     & https://github.com/peitalin/dotfiles/blob/master/.vimrc

" Plug 'https://github.com/morhetz/gruvbox'
" Plug 'sonph/onehalf', { 'rtp': 'vim' }
" Plug 'https://github.com/rakr/vim-one'
" Plug 'sonph/onehalf', { 'rtp': 'vim' }

" jsx/tsx support
Plug 'chemzqm/vim-jsx-improve'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Plug 'https://github.com/aliou/bats.vim'

" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" native neovim LSP
Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" --- end native neovim LSP ---

""" TODO list:
" https://github.com/romgrk/barbar.nvim
" https://github.com/romgrk/winteract.vim

" diffs, 3-way merges, etc
Plug 'https://github.com/whiteinge/diffconflicts'

call plug#end()

" onedark.vim override: Don't set a background color when running in a terminal;
" just use the terminal's background color
" `gui` is the hex color code used in GUI mode/nvim true-color mode
" `cterm` is the color code used in 256-color mode
" `cterm16` is the color code used in 16-color mode
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

""" Themes
set termguicolors
" colorscheme doom-one
colorscheme onedark

" function! s:set_conditional_colorscheme()
" 	if &ft ==# 'python'
" 		colorscheme onedark
" 	elseif &ft ==# 'cpp'
" 		colorscheme doom-one
" 	endif
" endfunc

" call timer_start(0, { ->s:set_conditional_colorscheme() })

set title
set background=dark
set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus " always copies into default clipboard by default. see https://stackoverflow.com/a/11489440/9285308
set shada+=n~/.vim/viminfo " change the location of the 'viminfo' file. see https://stackoverflow.com/a/6286925 & https://github.com/neovim/neovim/issues/3469#issuecomment-148900742
set updatetime=1000 " http://vimdoc.sourceforge.net/htmldoc/options.html#%27updatetime%27

let g:rainbow_active = 0

let g:slime_target = "neovim"

" https://github.com/jpalardy/vim-slime/tree/main/ftplugin/python
let g:slime_python_ipython = 1

" YouCompleteMe fix - see https://github.com/ycm-core/YouCompleteMe/issues/700
"
" The config itself is a generic one from https://github.com/ycm-core/YouCompleteMe#option-2-provide-the-flags-manually,
" you can use YCM-generator to generate a config per-project basis - see https://github.com/rdnetto/YCM-Generator
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

" https://github.com/xuhdev/vim-latex-live-preview#pdf-viewer
let g:livepreview_previewer = 'zathura'

" :h vimtex-complete-auto
let g:vimtex_complete_enabled=1

if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

let g:vimtex_compiler_latexmk = { 
        \ 'executable' : 'latexmk',
        \ 'options' : [ 
        \   '-xelatex',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}

let g:tex_flavor = 'latex'

" file search fast AF
" https://stackoverflow.com/a/17327372/9285308
" requires the_silver_searcher (ag) (https://github.com/ggreer/the_silver_searcher)
if executable('ag')
	" Use Ag over Grep
	set grepprg=ag\ --nogroup\ --nocolor

	" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
	let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
endif

" Some basics:
	nnoremap c "_c
	set nocompatible
	filetype plugin on
	filetype on
	syntax on
	set encoding=utf-8
	set number relativenumber

" custom #sarpik
	set tabstop=4
	set softtabstop=0
	set shiftwidth=4
	set noexpandtab
	set copyindent
	set preserveindent
	autocmd Filetype haskell setlocal tabstop=2
	set autoindent
	set backspace=indent,eol,start
	" https://stackoverflow.com/a/2287449
	set ignorecase
	set smartcase

" neovim terminal
" nnoremap <M-`> :split<CR>:terminal<CR>
" tnoremap <M-`> <C-\><C-n><CR>:q<CR>
" tnoremap <Esc> <C-\><C-n><CR>

" https://github.com/skywind3000/vim-terminal-help
let g:terminal_key="<M-`>"
let g:terminal_height=20

" work-around: iterm sends ",§" in preferences -> keys -> keybindings
nmap <leader>§ <M-`>
tmap <leader>§ <M-`>

" https://github.com/junegunn/vim-emoji#emoji-completion
set completefunc=emoji#complete

	" Create necessary directories:
	if !isdirectory("~/.vim/backup")
   		silent !mkdir -p ~/.vim/backup
	endif

	if !isdirectory("~/.vim/swap")
		silent !mkdir -p ~/.vim/swap
	endif

	if !isdirectory("~/.vim/undo")
		silent !mkdir -p ~/.vim/undo
	endif

	set backup
	set backupdir=~/.vim/backup//	" ~

	set swapfile
	set directory=~/.vim/swap//		" .swp

	set undofile
	set undodir=~/.vim/undo//		" undo files
" end custom #sarpik

" Enable autocompletion:
	set wildmode=longest,list,full
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" SLICK! Mappings for moving lines and preserving indentation

	" to work on macos + iterm:
	" tell iterm to send vim keys:
	" https://www.dfurnes.com/notes/binding-command-in-iterm
	" e.g. \<M-j> and \<M-k>
	"
	nnoremap <A-j> :m .+1<CR>==
	nnoremap <A-k> :m .-2<CR>==
	inoremap <A-j> <Esc>:m .+1<CR>==gi
	inoremap <A-k> <Esc>:m .-2<CR>==gi
	vnoremap <A-j> :m '>+1<CR>gv=gv
	vnoremap <A-k> :m '<-2<CR>gv=gv
	set ttimeoutlen=0 

" Perform dot commands over visual blocks:
	vnoremap . :normal .<CR>

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright

" Nerd tree
	map <C-n> :NERDTreeToggle<CR>
	"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    "if has('nvim')
    "    let NERDTreeBookmarksFile = stdpath('data') . '/NERDTreeBookmarks'
    "else
    "    let NERDTreeBookmarksFile = '~/.vim' . '/NERDTreeBookmarks'
    "endif

" vimling:
	nm <leader><leader>d :call ToggleDeadKeys()<CR>
	imap <leader><leader>d <esc>:call ToggleDeadKeys()<CR>a
	nm <leader><leader>i :call ToggleIPA()<CR>
	imap <leader><leader>i <esc>:call ToggleIPA()<CR>a
	nm <leader><leader>q :call ToggleProse()<CR>

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

	" jump to previous split!
	map <A-Tab> <C-w><C-p>
	imap <A-Tab> <C-w><C-p>
	nmap <A-Tab> <C-w><C-p>

" Replace ex mode with gq
	map Q gq

" Check file in shellcheck:
	map <leader>x :!clear && shellcheck -x %<CR>

" Open my bibliography file in split
	"map <leader>b :vsp<space>$BIB<CR>
	"map <leader>r :vsp<space>$REFER<CR>

" Replace all is aliased to S.
	nnoremap S :%s//g<Left><Left>

" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !compiler "<c-r>%"<CR>
	map <leader>b :w! \| !yarn build "<c-r>%"<CR>

	autocmd FileType cpp noremap <leader>p :w! \| !cputils-run -a "-DEVAL" - <c-r>%<CR>
	autocmd FileType cpp noremap <M-p>     :w! \| !cputils-run -a "-DEVAL" - <c-r>%<CR>

" Recompile markdown files to pdfs on write
" compiler script is here: https://github.com/kiprasmel/voidrice/blob/master/.local/bin/compiler
	autocmd BufWritePost *.md :AsyncRun compiler %

" open input file (see cputils)
	"nnoremap <leader>e :50vsplit %.txt<CR>

	" w/o extension:
	" https://stackoverflow.com/a/2605882/9285308
	nnoremap <leader>e :50vsplit %:r.txt<CR>

	" TODO: close if extension = .txt
	"nnoremap <M-e> :50vsplit %.txt<CR>
	nnoremap <M-e> :50vsplit %:r.txt<CR>

" Open corresponding .pdf/.html or preview
	map <leader>p :!opout <c-r>%<CR><CR>
	" map <M-p>     :!opout <c-r>%<CR><CR> " broken

" https://raw.githubusercontent.com/jalvesaq/Nvim-R/master/doc/Nvim-R.txt
" nvim-r
	nmap <LocalLeader>: :RSend<return>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %

" Ensure files are read as what I want:
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	map <leader>v :VimwikiIndex<CR>
	let g:vimwiki_list = [{'path': '~/.local/share/nvim/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
	autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
	autocmd BufRead,BufNewFile *.tex set filetype=tex

" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Enable Goyo by default for mutt writing
	autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=80
	autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo | set bg=light
	autocmd BufRead,BufNewFile /tmp/neomutt* map ZZ :Goyo\|x!<CR>
	autocmd BufRead,BufNewFile /tmp/neomutt* map ZQ :Goyo\|q!<CR>


" When shortcut files are updated, renew bash and ranger configs with new material:
	autocmd BufWritePost files,directories !~/.local/bin/shortcuts

" Update binds when sxhkdrc is updated.
	autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" Recompile suckless programs automatically:
	autocmd BufWritePost ~/builds/st/config.h,~/builds/st/config.def.h !sudo make instal

" Recompile dwmblocks on config edit.
	autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid -f dwmblocks }

" Navigating with guides
	inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	map <leader><leader> <Esc>/<++><Enter>"_c4l

" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

	nmap <leader>o :TagbarToggle<CR>

""" I haven't used these, Luke does though - maybe one day:D

"""LATEX
	" Word count:
	" autocmd FileType tex map <leader>w :w !detex \| wc -w<CR>
	" Code snippets
	autocmd FileType tex inoremap ,fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
	autocmd FileType tex inoremap ,fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
	autocmd FileType tex inoremap ,exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
	autocmd FileType tex inoremap ,em \emph{}<++><Esc>T{i
	autocmd FileType tex inoremap ,bf \textbf{}<++><Esc>T{i
	autocmd FileType tex vnoremap , <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
	autocmd FileType tex inoremap ,it \textit{}<++><Esc>T{i
	autocmd FileType tex inoremap ,ct \textcite{}<++><Esc>T{i
	autocmd FileType tex inoremap ,cp \parencite{}<++><Esc>T{i
	autocmd FileType tex inoremap ,glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
	autocmd FileType tex inoremap ,x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
	autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ,li <Enter>\item<Space>
	autocmd FileType tex inoremap ,ref \ref{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
	autocmd FileType tex inoremap ,ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
	autocmd FileType tex inoremap ,can \cand{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,con \const{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,v \vio{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,a \href{}{<++>}<Space><++><Esc>2T{i
	autocmd FileType tex inoremap ,sc \textsc{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,chap \chapter{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,sec \section{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,st <Esc>F{i*<Esc>f}i
	autocmd FileType tex inoremap ,beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
	autocmd FileType tex inoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
	autocmd FileType tex nnoremap ,up /usepackage<Enter>o\usepackage{}<Esc>i
	autocmd FileType tex inoremap ,tt \texttt{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,bt {\blindtext}
	autocmd FileType tex inoremap ,nu $\varnothing$
	autocmd FileType tex inoremap ,col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
	autocmd FileType tex inoremap ,rn (\ref{})<++><Esc>F}i

"""HTML
	autocmd FileType html inoremap ,b <b></b><Space><++><Esc>FbT>i
	autocmd FileType html inoremap ,it <em></em><Space><++><Esc>FeT>i
	autocmd FileType html inoremap ,1 <h1></h1><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ,2 <h2></h2><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ,3 <h3></h3><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ,p <p></p><Enter><Enter><++><Esc>02kf>a
	autocmd FileType html inoremap ,a <a<Space>href=""><++></a><Space><++><Esc>14hi
	autocmd FileType html inoremap ,e <a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
	autocmd FileType html inoremap ,ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
	autocmd FileType html inoremap ,li <Esc>o<li></li><Esc>F>a
	autocmd FileType html inoremap ,ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
	autocmd FileType html inoremap ,im <img src="" alt="<++>"><++><esc>Fcf"a
	autocmd FileType html inoremap ,td <td></td><++><Esc>Fdcit
	autocmd FileType html inoremap ,tr <tr></tr><Enter><++><Esc>kf<i
	autocmd FileType html inoremap ,th <th></th><++><Esc>Fhcit
	autocmd FileType html inoremap ,tab <table><Enter></table><Esc>O
	autocmd FileType html inoremap ,gr <font color="green"></font><Esc>F>a
	autocmd FileType html inoremap ,rd <font color="red"></font><Esc>F>a
	autocmd FileType html inoremap ,yl <font color="yellow"></font><Esc>F>a
	autocmd FileType html inoremap ,dt <dt></dt><Enter><dd><++></dd><Enter><++><esc>2kcit
	autocmd FileType html inoremap ,dl <dl><Enter><Enter></dl><enter><enter><++><esc>3kcc
	autocmd FileType html inoremap &<space> &amp;<space>
	autocmd FileType html inoremap á &aacute;
	autocmd FileType html inoremap é &eacute;
	autocmd FileType html inoremap í &iacute;
	autocmd FileType html inoremap ó &oacute;
	autocmd FileType html inoremap ú &uacute;
	autocmd FileType html inoremap ä &auml;
	autocmd FileType html inoremap ë &euml;
	autocmd FileType html inoremap ï &iuml;
	autocmd FileType html inoremap ö &ouml;
	autocmd FileType html inoremap ü &uuml;
	autocmd FileType html inoremap ã &atilde;
	autocmd FileType html inoremap ẽ &etilde;
	autocmd FileType html inoremap ĩ &itilde;
	autocmd FileType html inoremap õ &otilde;
	autocmd FileType html inoremap ũ &utilde;
	autocmd FileType html inoremap ñ &ntilde;
	autocmd FileType html inoremap à &agrave;
	autocmd FileType html inoremap è &egrave;
	autocmd FileType html inoremap ì &igrave;
	autocmd FileType html inoremap ò &ograve;
	autocmd FileType html inoremap ù &ugrave;


""".bib
	autocmd FileType bib inoremap ,a @article{<Enter>author<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>journal<Space>=<Space>{<++>},<Enter>volume<Space>=<Space>{<++>},<Enter>pages<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>8kA,<Esc>i
	autocmd FileType bib inoremap ,b @book{<Enter>author<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>publisher<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>6kA,<Esc>i
	autocmd FileType bib inoremap ,c @incollection{<Enter>author<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>booktitle<Space>=<Space>{<++>},<Enter>editor<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>publisher<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>8kA,<Esc>i

"MARKDOWN
	" autocmd Filetype markdown,rmd map <leader>w yiWi[<esc>Ea](<esc>pa)
	autocmd Filetype markdown,rmd inoremap ,n ---<Enter><Enter>
	autocmd Filetype markdown,rmd inoremap ,b ****<++><Esc>F*hi
	autocmd Filetype markdown,rmd inoremap ,s ~~~~<++><Esc>F~hi
	autocmd Filetype markdown,rmd inoremap ,e **<++><Esc>F*i
	autocmd Filetype markdown,rmd inoremap ,h ====<Space><++><Esc>F=hi
	autocmd Filetype markdown,rmd inoremap ,i ![](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ,a [](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ,1 #<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,2 ##<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,3 ###<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,l --------<Enter>
	autocmd Filetype rmd inoremap ,r ```{r}<CR>```<CR><CR><esc>2kO
	autocmd Filetype rmd inoremap ,p ```{python}<CR>```<CR><CR><esc>2kO
	autocmd Filetype rmd inoremap ,c ```<cr>```<cr><cr><esc>2kO

""".xml
	autocmd FileType xml inoremap ,e <item><Enter><title><++></title><Enter><guid<space>isPermaLink="false"><++></guid><Enter><pubDate><Esc>:put<Space>=strftime('%a, %d %b %Y %H:%M:%S %z')<Enter>kJA</pubDate><Enter><link><++></link><Enter><description><![CDATA[<++>]]></description><Enter></item><Esc>?<title><enter>cit
	autocmd FileType xml inoremap ,a <a href="<++>"><++></a><++><Esc>F"ci"

" Turns off highlighting on the bits of code that are changed, so the line that is changed is highlighted but the actual text that has changed stands out on the line and is readable.
if &diff
	highlight! link DiffText MatchParen
endif

" Use A-- and A-= as C-i and C-o (go to previous/next location)
" see https://stackoverflow.com/a/11018933/9285308
" prev
nnoremap <A--> <C-o>
" next
nnoremap <A-=> <C-i>

" --- vim-airline ---

" show current column in csv files.
" see :help airline-csv
let g:airline#extensions#csv#enabled = 1
let g:airline#extensions#csv#column_display = 'Name'

" Function for toggling the bottom statusbar:
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction
nnoremap <leader>h :call ToggleHiddenAll()<CR>
" Load command shortcuts generated from bm-dirs and bm-files via shortcuts script.
" Here leader is ";".
" So ":vs ;cfz" will expand into ":vs /home/<user>/.config/zsh/.zshrc"
" if typed fast without the timeout.
source ~/.config/nvim/shortcuts.vim

" " BEGIN COC.VIM
" 
" " TextEdit might fail if hidden is not set.
" set hidden
" 
" " Some servers have issues with backup files, see #649.
" set nobackup
" set nowritebackup
" 
" " Give more space for displaying messages.
" set cmdheight=1
" 
" " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" " delays and poor user experience.
" set updatetime=300
" 
" " Don't pass messages to |ins-completion-menu|.
" set shortmess+=c
" 
" " Always show the signcolumn, otherwise it would shift the text each time
" " diagnostics appear/become resolved.
" if has("patch-8.1.1564")
"   " Recently vim can merge signcolumn and number column into one
"   set signcolumn=number
" else
"   set signcolumn=yes
" endif
" 
" " Use tab for trigger completion with characters ahead and navigate.
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" 
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
" 
" " Use <c-space> to trigger completion.
" if has('nvim')
"   inoremap <silent><expr> <c-space> coc#refresh()
" else
"   inoremap <silent><expr> <c-@> coc#refresh()
" endif
" 
" " custom: disabled (buggy - enter freezes vim until C-c and there's a bunch of stuff pasted in)
" 
" """" Make <CR> auto-select the first completion item and notify coc.nvim to
" """" format on enter, <cr> could be remapped by other vim plugin
" """inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
" """                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" 
" " Use `[g` and `]g` to navigate diagnostics
" " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)
" 
" " GoTo code navigation.
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
" 
" " Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>
" 
" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   elseif (coc#rpc#ready())
"     call CocActionAsync('doHover')
"   else
"     execute '!' . &keywordprg . " " . expand('<cword>')
"   endif
" endfunction
" 
" " Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')
" 
" " Symbol renaming.
" " nmap <leader>rn <Plug>(coc-rename)
" " custom:
" nmap <F2> <Plug>(coc-rename)
" 
" " Formatting selected code.
" "xmap <leader>f  <Plug>(coc-format-selected)
" "nmap <leader>f  <Plug>(coc-format-selected)
" 
" augroup mygroup
"   autocmd!
"   " Setup formatexpr specified filetype(s).
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder.
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end
" 
" " Applying codeAction to the selected region.
" " Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)
" 
" " Remap keys for applying codeAction to the current buffer.
" nmap <leader>ac  <Plug>(coc-codeaction)
" " Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)
" 
" " Map function and class text objects
" " NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" xmap if <Plug>(coc-funcobj-i)
" omap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap af <Plug>(coc-funcobj-a)
" xmap ic <Plug>(coc-classobj-i)
" omap ic <Plug>(coc-classobj-i)
" xmap ac <Plug>(coc-classobj-a)
" omap ac <Plug>(coc-classobj-a)
" 
" " Remap <C-f> and <C-b> for scroll float windows/popups.
" " if has('nvim-0.4.0') || has('patch-8.2.0750')
" "   nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
" "   nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
" "   inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
" "   inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
" "   vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
" "   vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
" " endif
" 
" " Use CTRL-S for selections ranges.
" " Requires 'textDocument/selectionRange' support of language server.
" nmap <silent> <C-s> <Plug>(coc-range-select)
" xmap <silent> <C-s> <Plug>(coc-range-select)
" 
" " Add `:Format` command to format current buffer.
" command! -nargs=0 Format :call CocAction('format')
" 
" " Add `:Fold` command to fold current buffer.
" command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" 
" " Add `:OR` command for organize imports of the current buffer.
" command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" 
" " Add (Neo)Vim's native statusline support.
" " NOTE: Please see `:h coc-status` for integrations with external plugins that
" " provide custom statusline: lightline.vim, vim-airline.
" " set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" 
" " Mappings for CoCList
" " custom: Show marketplace.
" nnoremap <silent><nowait> <space>m  :<C-u>CocList marketplace<cr>
" " Show all diagnostics.
" nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions.
" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" " Show commands.
" nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document.
" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols.
" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list.
" nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
" 
" " END COC.VIM

"let g:asyncrun_trim=0
"let g:asyncrun_status = "stopped" 
"let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])

" Reload / Source Vim configuration file and install plugins
nnoremap <silent><leader>1 :source ~/.config/nvim/init.vim \| :PlugInstall<CR>

noremap <leader>s :!git exec make test<CR>
" autocmd FileType bats inoremap <Esc><leader>a :!git exec make test<CR>

lua <<EOF
-- https://github.com/phaazon/hop.nvim#installation
require'hop'.setup()
EOF

nnoremap <leader>w :HopWord<CR>
nnoremap <C-f> :HopWord<CR>
nnoremap <M-f> :HopWord<CR>

" --- Telescope ---

" Find files using Telescope command-line sugar.
nnoremap <C-p> <cmd>Telescope find_files<cr>
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" --- Tabline ---
let g:tablineclosebutton=1
hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE

" --- UndoTree ---
nnoremap <F5> :UndotreeToggle<CR>

" --- Lint ---
nnoremap <leader>l :!eslint % --fix<cr>

" --- Highlight ---
nnoremap <leader>h :set hlsearch!<cr>

" --- nvim-lsp ---
" TODO LSP
"lua require'lspconfig'.bashls.setup{}

" --- git-messenger---
let g:git_messenger_always_into_popup = v:true
nmap <leader>gg <Plug>(git-messenger)

" --- native neovim LSP ---

" see:
" https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#tsserver
" https://jose-elias-alvarez.medium.com/configuring-neovims-lsp-client-for-typescript-development-5789d58ea9c

""" moved into the nvim-cmp
" lua <<EOF
" require'lspconfig'.tsserver.setup{}
" 
" EOF

" see https://github.com/hrsh7th/nvim-cmp
set completeopt=menu,menuone,noselect

lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      ['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities
  }
EOF
