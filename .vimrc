call pathogen#infect()

"Enable filetypes  
filetype on  
filetype plugin on  
filetype indent on  
syntax on

let g:html_indent_inctags = ""

" Damit der rechte scrollbalken im Vollbildmodus nicht stoert
set guioptions-=r


set nocompatible
set encoding=utf-8
set ruler
set showcmd
set number
set foldenable
set nowrap


set directory=~/.vim/tmp/


"Zeigt die Statuszeile immer an
set laststatus=2
"Auto-completion menu 
set wildmenu
set wildmode=list:longest


"Hide mouse when typing  
set mousehide 


"Tabweite
set tabstop=4
set shiftwidth=4

"Einrückung  
set smartindent  
set autoindent 


"Blendet die Toolbar aus
set go-=T  


"fuer caseinsensitive suche
set ignorecase


"Ändert den Zen Coding expand Befehl zu Ctrl+e
let g:user_zen_expandabbr_key = '<C-e>'


"Für tComment Kommentarfunktion (//)
map // <c-_><c-_>


"Mapt Einfügen Funktion auf leader + p
map <leader>p "+gP
map <leader>y "+y
map <leader>x "+x


" Öffnet ein neues Vertikales Splitfenster und fokusiert es
nnoremap <leader>s <C-w>v<C-w>l
set splitright


" Speichert den aktuellen Buffer wenn VIM den focus verliert
au FocusLost * :wa
"Switch between buffers without saving  
set hidden  


"Farbschema und ein paar Anpassungen dafür
"colorscheme twilight
"hi Type gui=NONE
"hi Comment gui=NONE
"hi StatusLine gui=underline
"hi StatusLineNC gui=underline

if has('gui_running')
	colorscheme solarized
    set background=light 
endif

set guifont=Monospace\ 9


"Schnelleres umschalten in den select Modus
imap jj <esc>


"Schnelleres Aufrufen meines vimrc Files
map <silent><F8> :tabnew ~/.vimrc <CR>


" Rechtschreibkorrekturen / Shortcuts
iab teh the
iab todo //TODO:
iab extend extends


" Completezeug
set completeopt=longest,menuone


"SVN Mappings
"nnoremap <F6> :call SvnCommitAll() <CR>
nnoremap <F5> :call SvnCommit() <CR>
"svn functionen
func! SvnCommitAll()
  exec "wa"
  exec "silent !svn commit -m ''"
endfunc
func! SvnCommit()
  exec "w"
  exec "silent !svn commit %:. -m ''"
endfunc


" Tabwechsel rückwärts auf gr gemapped
map gr gT


" IntelliSense
inoremap <C-Space> <C-X><C-O>
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags


" FuzzyFind
nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>


" Läd ctags Datei aus aktuellem Verzeichnis
set tags=ctags

func! SetSoftTabs()
  exec "set tabstop=2" 
  exec "set shiftwidth=2" 
  exec "set expandtab"
endfunc
func! SetHardTabs()
  exec "set tabstop=4" 
  exec "set shiftwidth=4" 
  exec "set noexpandtab"
endfunc

func! PHPParse()
	exec "w"
	exec "!php -l %"
endfunc

"nnoremap <leader>1 :call SetSoftTabs() <CR>
"nnoremap <leader>2 :call SetHardTabs() <CR>
nnoremap <leader>p :call PHPParse() <CR>
