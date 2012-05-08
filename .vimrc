call pathogen#infect()

"Enable filetypes  
filetype on  
filetype plugin on  
filetype indent on  
syntax on


let g:html_indent_inctags = ""


set nocompatible
set enc=utf-8
set ruler
set showcmd
set number
set foldenable

set directory=~/.vim/tmp/


"Zeigt die Statuszeile immer an
set laststatus=2
"Auto-completion menu 
set wildmenu
set wildmode=list:longest


"Hide mouse when typing  
set mousehide 


"Tabweite
set tabstop=2
set shiftwidth=2
"set expandtab

"Einrückung  
set smartindent  
set autoindent 


"Blendet die Toolbar aus
set go-=T  


"Ändert den Zen Coding expand Befehl zu Ctrl+e
let g:user_zen_expandabbr_key = '<C-e>'


"Für tComment Kommentarfunktion (\c)
map <leader>c <c-_><c-_>


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


" Completezeug
set completeopt=longest,menuone


"SVN Mappings
nnoremap <F6> :call SvnCommitAll() <CR>
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


command COMAls exec "source ~/.coma_session.vim"
command COMAmks exec "mks! ~/.coma_session.vim"
