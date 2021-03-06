"===================================="
"             GLOBALS                "
"===================================="

" set nocompatible with vi
set nocompatible
syntax on

" my preferable color scheme for rails
" colorscheme vividchalk
" colorscheme ir_black
set background=light
colorscheme solarized

" changing status line like Derek Wyatt
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n

" always leave status line
set laststatus=2

" have command line of two lines high
set ch=2

" I've added this for Rails support
filetype plugin indent on

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

" show last status 2
set laststatus=2

" shows all commands
set showcmd

" show a mode in which you currently are
set showmode

" Expand the command line using tab
set wildchar=<Tab>

" Auto indentation
set autoindent

" Smart indentation
set smartindent
" auto file type match
filetype plugin indent on

" indents equals 4 spaces
set tabstop=2

"set blinking on matching brackets
set mat=5

" autoindets tabs
set shiftwidth=2

" show numbers
set number

" enable code folding
set foldenable
set foldmethod=syntax

" always keep visible 8 lines below and above
set scrolloff=8

" split buffers more logically
set splitbelow
set splitright

" changes the default leader to coma
let mapleader = ","

" hide scrollbars and menus
set guioptions-=m
set guioptions-=T
set guioptions-=r

"===================================="
"             PLUGINS                "
"===================================="

" enabling pathogen plugin (autoload)
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Add recently accessed projects menu (project plugin)
set viminfo^=!

"===================================="
"             AUTOCMDs               "
"===================================="

" some filetypes:
au! BufRead,BufNewFile *.sass         setfiletype sass 
au! BufRead,BufNewFile *.scss         setfiletype scss 

" special indentation for rails
augroup myfiletypes
	" Clear old autocmds in group
	autocmd!
	"autoindent with two spaces, always expand tabs
	autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

" reload .vimrc every time you save it
autocmd bufwritepost .vimrc source ~/.vimrc

"===================================="
"             MAPPING                "
"===================================="

" remap default keys of 'j' and 'k'
map j gj
map k gk

" in insert mode to escape to normal mode press 'jj'
imap jj <ESC>

" remap keys in insert mode to make html entites for polish letters
" imap Ą &#260;
" imap ą &#261;
" imap Ć &#262;
" imap ć &#263;
" imap Ę &#280;
" imap ę &#281;
" imap Ł &#321;
" imap ł &#322;
" imap Ń &#323;
" imap ń &#324;
" imap Ó &#211;
" imap ó &#243;
" imap Ś &#346;
" imap ś &#347;
" imap Ź &#377;
" imap ź &#378;
" imap Ż &#379;
" imap ż &#380;

" mappings for editing files relativley to the current open file
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>


