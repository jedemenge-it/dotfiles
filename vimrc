call pathogen#infect()

"Enable filetypes
filetype on
filetype plugin on
filetype indent on
syntax on

let g:html_indent_inctags = ""

"set tw=75

" Damit der rechte scrollbalken im Vollbildmodus nicht stoert
set guioptions-=r

set nocompatible
set encoding=utf-8
set ruler
set showcmd
set number
set nowrap

"zeige suchergebnisse farbig an
set hlsearch
"zeigt trailing whitespace besonders an
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
map <leader>w /\s\+$<CR>

"verschluesselung mit blowfish2
set cryptmethod=blowfish2

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


if has('gui_running')
	colorscheme solarized
    set background=light
endif

set guifont=Monospace\ 9


"Schnelleres umschalten in den select Modus
imap jj <esc>


"Schnelleres Aufrufen meines vimrc Files
map <silent><F8> :tabnew ~/.vimrc <CR>


" Completezeug
set completeopt=longest,menuone


" Tabwechsel rückwärts auf gr gemapped
map gr gT
