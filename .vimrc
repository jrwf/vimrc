" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" test test

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}


" ------ Plugins -------------------------
Bundle 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mbbill/undotree'
Plugin 'majutsushi/tagbar'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Shougo/vimshell.vim'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-bufferline'
Plugin 'widox/vim-buffer-explorer-plugin'
Plugin 'fishman/ctags'
Plugin 'myusuf3/numbers.vim'
Plugin 'mvolkmann/vim-tag-comment'
"tc :ElementComment
"tu :ElementUncomment
"tC :TagComment
"tU :TagUncomment
nnoremap <silent> <leader>tc :ElementComment<CR>
nnoremap <silent> <leader>tu :ElementUncomment<CR>
nnoremap <silent> <leader>tC :TagComment<CR>
nnoremap <silent> <leader>tU :TagUncomment<CR>

nnoremap <F3> :NumbersToggle<CR>
" nnoremap <F4> :NumbersOnOff<CR>

Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

Plugin 'bling/vim-airline'
"Plugin 'ryanoasis/vim-webdevicons'
""set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
"let g:lightline = {
      "\ 'component_function': {
      "\   'filetype': 'MyFiletype',
      "\   'fileformat': 'MyFileformat',
      "\ }
      "\ }

"function! MyFiletype()
  "return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
"endfunction

"function! MyFileformat()
  "return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
"endfunction



Plugin 'chrisgillis/vim-bootstrap3-snippets'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'ap/vim-css-color'

"Plugin 'vitalk/vim-simple-todo'
Plugin 'freitass/todo.txt-vim'
" Bundle 'git://drupalcode.org/project/vimrc.git', {'rtp': 'bundle/vim-plugin-for-drupal/'}
" Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-session'
Plugin 'benjifisher/Vim-Plugin-for-Drupal'
" Bundle 'captbaritone/better-indent-support-for-php-with-html'
" Plugin 'vim-scripts/php.vim-html-enhanced'
Plugin 'spf13/PIV'

Plugin 'mhinz/vim-startify'
Plugin 'Valloric/MatchTagAlways'
Plugin 'kien/ctrlp.vim'
Plugin 'mtscout6/vim-tagbar-css'
Plugin 'othree/html5.vim'

" Display marks
" https://github.com/kshenoy/vim-signature
" delm! | delm A-Z0-9 - smazat vsechny znacky
Plugin 'kshenoy/vim-signature'
"Plugin 'amiorin/vim-project'
"
"Plugin 'jrwf/vim-woody'

Plugin 'tomasr/molokai'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'creationix/vimrc'
" Plugin 'nanotech/jellybeans'
" Plugin 'vim-scripts/wintersday'
" Plugin 'fugalh/desert'
" Plugin 'croaker/mustang-vim'
" Plugin 'sickill/vim-monokai'
" Plugin 'jpo/vim-railscasts-theme'
" Plugin 'sjl/badwolf'
" Plugin 'chriskempson/base16-vim'
" Plugin 'michalbachowski/vim-wombat256mod'
" Plugin '29decibel/codeschool-vim-theme'

" Marks
nnoremap <silent> <leader>m :marks<CR>




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


let mapleader = ","


" =================== Startify
let g:startify_session_dir = "~/.vim/sessions"

" Automatically update sessions in two cases:
" 1) Before leaving Vim
" 2) Before loading a new session via :SLoad

let g:startify_session_persistence = 0
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
let g:startify_session_delete_buffers = 1
let g:startify_disable_at_vimenter = 1


"let g:startify_enable_special         = 0
"let g:startify_files_number           = 8
"let g:startify_relative_path          = 1
"let g:startify_change_to_dir          = 1
"let g:startify_session_autoload       = 1
"let g:startify_session_persistence    = 1
"let g:startify_session_delete_buffers = 1

hi StartifyBracket ctermfg=240
hi StartifyFile    ctermfg=147
hi StartifyFooter  ctermfg=240
hi StartifyHeader  ctermfg=114
hi StartifyNumber  ctermfg=215
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240
hi StartifySpecial ctermfg=240
"let g:startify_list_order = ['files', 'dir', 'bookmarks', 'sessions']

"autocmd User Startified AirlineRefresh
"g:startify_bookmarks

" :SLoad    load a session
" :SSave    save a session
" :SDelete  delete a session"
" :help startify-options
" Startify

nnoremap <silent> <leader>s :Startify<CR>


" =================== Nastaveni pluginu

" ------ Ctrlp.vim
" https://github.com/kien/ctrlp.vim

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" ------ Emmet
" https://github.com/mattn/emmet-vim "

" ------ NERDTree
map <leader>e :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <C-e> :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeShowBookmarks=0
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0
" bookmark se zobrazi uz pri otevreni vimu
" autocmd StdinReadPre * let s:std_in=0
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"autocmd VimEnter *
                "\   if !argc()
                "\ |   Startify
                "\ |   NERDTree
                "\ |   wincmd w
                "\ | endif


" ------ Undotree
nnoremap <Leader>u :UndotreeToggle<CR>
" If undotree is opened, it is likely one wants to interact with it.
let g:undotree_SetFocusWhenToggle=1

" ------ Tagbar
nnoremap <silent> <leader>tt :TagbarToggle<CR>

set tags='/user/bin/ctags'

" ----- Neocomplete.vim
" http://vim.wikia.com/wiki/Improve_completion_popup_menu

" https://github.com/Shougo/neocomplete.vim
" http://pastebin.com/1Tw93UpM
" https://github.com/Shougo/neosnippet.vim/blob/master/doc/neosnippet.txt

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" --------------- neosnippet.vima
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
xmap <C-l>     <Plug>(neosnippet_start_unite_snippet_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" --------------- Nerdcommenter
" http://spf13.com/post/vim-plugins-nerd-commenter
" http://www.vim.org/scripts/script.php?script_id=1218
"
" ,cu |NERDComUncommentLine|
" ,c<space> |NERDComToggleComment|
" ,cs |NERDComSexyComment| - blok
" ,cc |NERDComComment|
" ,cm /*   */

" =================== Nastaveni Vimu

let mapleader = ","

" Vzor nastaveni hodnot
" http://www.abclinuxu.cz/blog/Drobnosti/2007/3/19/173337%22%3EMoje
" http://vim.wikia.com/wiki/Example_vimrc
" http://dougblack.io/words/a-good-vimrc.html#colors
" http://www.snip2code.com/Snippet/16759/vim-configuration-file

" syntax enable
" set background=dark
" set background=light
" colorscheme solarized
" colorscheme wintersday
" colorscheme desert
" colorscheme mustang
" colorscheme monokai
" colorscheme railscasts
" colorscheme badwolf
colorscheme molokai



"===================






let g:molokai_original = 1
" let g:rehash256 = 1

" colorscheme codeschool
" colorscheme wombat256mod



syntax enable
" set background=dark
" colorscheme solarized

set guifont=Monospace\ 9
"set guifont=Monospace\ 8

" Modifikované soubory se budou automaticky ukládat při přechodu do jiného bufferu,
" spuštění externího příkazu, při volání :make apod.
" Ukládat se automaticky nebudou při ukončení editoru či odstraňování bufferu
" (místo toho VIM zahlásí chybu nebo se zeptá, co má dělat).
" http://www.root.cz/clanky/vim-na-plny-vykon-vimrc/
set autowrite

" Těmito volbami říkáme, že chceme, aby VIM vytvářel zálohy souborů a aby tyto zálohy ukládal do ~/.vim/backup
" (adresář je třeba vytvořit), a pokud to nepůjde, tak do aktuálního adresáře nebo domovského adresáře.
" Záložní soubor se pozná podle znaku tildy (~) na konci svého názvu.
" Tj. např. pokus.txt bude mít záložní souborpokus.txt~ atd.
" http://www.root.cz/clanky/vim-na-plny-vykon-vimrc/
set backup
set backupdir=~/.vim/backup,.,~/

" Čárkami oddělený seznam adresářů, kam se mají ukládat dočasné soubory.
" Pokud nelze dočasný soubor uložit do prvního adresáře v seznamu, použije se druhý v pořadí atd.
" Osobně mě rozčiluje, když se dočasné soubory ukládají do adresáře, ve kterém pracuji.
" Pomocí této volby jsem si je tedy přesměroval do soukromého tmp adresáře.
" http://www.root.cz/clanky/vim-na-plny-vykon-vimrc/
set directory=~/.vim/tmp

" Místo, aby různé operace (:q, :e) selhaly, protože není uložen aktuální buffer,
" VIM se uživatele zeptá, jestli chce soubor uložit.
" http://www.root.cz/clanky/vim-na-plny-vykon-vimrc/
set confirm

" Když po své práci opouštíte editor VIM, ztrácí se tím mnoho informací.
" Přicházíte o obsahy registrů (schránek), historii příkazů a vyhledávacích řetězců, globální proměnné a značky.
" Základním nástrojem VIMu určeným k tomu, abychom o tyto údaje nepřicházeli, je použití .viminfosouboru.
" Když je VIM vhodně nakonfigurován, ukládá automaticky při každém ukončení různé stavové informace
" do .viminfo souboru ve vašem domovském adresáři, ze kterých při příštím spuštění čerpá.
" Vhodnou volbou je například toto:
" http://www.root.cz/clanky/vim-na-plny-vykon-vimrc/
set viminfo='50,\"500
set history=50
" které zajistí, že se budou ukládat informace o posledních padesáti souborech,
" obsahy registrů se budou uchovávat do velikosti 500 řádků a historie příkazů a vyhledávacích výrazů
" bude omezena rovněž na 50. VIM by měl také umět automaticky skočit s kurzorem na místo, kde jsme minule skončili.

" VIM umí podobně jako různé shelly automaticky doplňovat názvy příkazů nebo souborů.
" Obvykle stačí napsat jen začátek příkazu, stisknout smluvenou klávesu (v shellech obvykle Tab)
" a celé jméno příkazu se automaticky doplní. Zkuste do svého .vimrc přidat třeba následující trojici příkazů:
" http://www.root.cz/clanky/vim-na-plny-vykon-vimrc/
set wildchar=<Tab>
set wildmenu
set wildmode=longest:full,full
" První volba nastavuje jako klávesu pro automatické doplňování tabulátor, druhá volba říká,
" že pokud je možných doplnění více, má vyskočit jednoduché menu se všemi možnostmi.
" Třetí příkaz pak určuje, jakým způsobem se má doplňování provádět, pokud je možností doplnění více:
" první stisk tabulátoru doplní co největší část a zapříčiní zobrazení zmiňovaného menu,
" ze kterého lze správné doplnění vybírat dalšími stisky klávesy Tab.

" Jestli jste si podobně jako já zvykli na VIMovské kurzorové klávesy h, j, k, l, že bez nich nemůžete být ani v insert módu,
" může vám přijít k duhu jejich mapování s podrženou klávesou Ctrl:
" http://www.root.cz/clanky/vim-na-plny-vykon-vimrc/
" imap <C-h> <Left>
" imap <C-j> <Down>
" imap <C-k> <Up>
" imap <C-l> <Right>

" Indentation options {{{1
" Indentation settings according to personal preference.
" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
" http://vim.wikia.com/wiki/Example_vimrc
set shiftwidth=2
set softtabstop=2
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
"set shiftwidth=2
"set tabstop=2

" Display line numbers on the left
set number

" number of visual spaces per TAB
set tabstop=2

" highlight current line
set cursorline

" enable folding
set foldenable

" leader is comma
let mapleader=","

" jk is escape
inoremap jk <esc>

"vpravo dole zobrazuje pozici kurzoru
set ruler

"vlevo dole zobrazuje aktuální režim
set showmode

"zobrazuje doposud zadanou část příkazu (přínosné u víceznakových příkazů, jako je třeba qf})
set showcmd

"barevně zvýrazňuje syntaxi v editovaném textu, podrobnosti se dočtete zanedlouho
syntax on

" set guifont=-misc-fixed-medium-r-normal--11-*-iso8859-2

" velikost okna
set lines=58
set columns=175

set ruler

" Definice klavesove zkratky pro soucasne zobrazeny obsahu vsech bufferu.
" map <F5> :vertical ball<ENTER>

" Pri psani skryt kurzor mysi.
" set mousehide

" Vzdy zobrazovat pozici kurzoru.
set ruler

" Pri vyhledavani zobrazovat nalezene vyskyty uz pri zadavani hledaneho
" retezce.
set incsearch

" Pri hledani nerozlisovat mala/velka pismena.
set ignorecase

" Inteligentni rozlisovani malych/velkych pismen pri vyhledavani.
" Pri zadani dotazu jen malymi pismeny se velikost pismen ignoruje, pri pouziti
" alespon jednoho velkeho pismene se hleda retezec presne v zadanem tvaru.
" (Vyzaduje nastavene "set ignorecase".)
set smartcase

" Prilis dlouhe radky zobrazovat zalomene v bilych znacich mezi slovy, nikoli
" uprostred slov.
set linebreak

" Text zalamovat na 80. znaku.
set textwidth=100

" Pouzivat automaticke odsazovani psaneho kodu.
set autoindent

" Pouzivat 'inteligentni' automaticke odsazovani psaneho kodu.
set smartindent

" Zapnout zvyraznovani nalezenych vysledku posledniho vyhledavani.
set hlsearch

" Vzdy zobrazovat stavovou listu.
set laststatus=2

" Prizpusobeni informaci zobrazenych ve stavove liste okna.
set statusline=[%n/%{bufnr(\"$\")}]\ %<%F\ \ %h%m%=[%W%Y%R%{\",\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\"}%{\",\".(&fileformat)}]\ %k\ %-14.(%l,%c%V%)%P\ (%LL,\ %{getfsize(expand(\"%:p\"))==\"-1\"?\"-\":getfsize(expand(\"%:p\"))}C)%{fugitive#statusline()}

" set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Pouzivat modelines (retezce informujici VIM, jak se ma nastavit).
set modeline

" V normalnim modu umoznit prepinani mezi vice okny klavesou Shift+Tab.
nmap <S-Tab> <C-w>w

" Klavesou F12 prepinat mezi beznym vkladacim rezimem a rezimem pro vkladani
" dat ze schranky, ve kterem je text vlozen "jak je" bez uprav formatovani
" apod.
set pastetoggle=<F12>

" Prepinani otevrenych souboru
" Trik spočívá v tom, že na klávesy Alt plus 1 až0 máte namapovány příkazy pro přechod do bufferů s odpovídajícími čísly.
" Pro přesun na následující/předcházející buffer v pořadí se mapuje navíc dvojice Ctrl+Tab/Shift+Ctrl+Tab.
" Díky přidaným mapováním imap zkratky fungují i v insert módu.
" http://www.root.cz/clanky/vim-na-plny-vykon-vimrc/

map <A-1> :b1<CR>
map <A-2> :b2<CR>
map <A-3> :b3<CR>
map <A-4> :b4<CR>
map <A-5> :b5<CR>
map <A-6> :b6<CR>
map <A-7> :b7<CR>
map <A-8> :b8<CR>
map <A-9> :b9<CR>
map <A-0> :b10<CR>
map <C-Tab> :bn<CR>
map <S-C-Tab> :bp<CR>

imap <A-1> <Esc>:b1<CR>
imap <A-2> <Esc>:b2<CR>
imap <A-3> <Esc>:b3<CR>
imap <A-4> <Esc>:b4<CR>
imap <A-5> <Esc>:b5<CR>
imap <A-6> <Esc>:b6<CR>
imap <A-7> <Esc>:b7<CR>
imap <A-8> <Esc>:b8<CR>
imap <A-9> <Esc>:b9<CR>
imap <A-0> <Esc>:b10<CR>
imap <C-Tab> <Esc>:bn<CR>
imap <S-C-Tab> <Esc>:bp<CR>



" http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_%28Part_1%29
" http://vimdoc.sourceforge.net/htmldoc/map.html
" http://vimdoc.sourceforge.net/htmldoc/insert.html#ins-completion

" ---- Buffer explorer -------------------------------------
let g:bufferline_echo = 1

"map <Leader>b :BufExplorer<CR>
nnoremap <silent> <leader>b :BufExplorer<CR>





"
"CTAGS
"
"let Tlist_Ctags_Cmd = "/usr/bin/ctags"
"let Tlist_WinWidth = 20

"
" add drupal tags
"
"set tags+=~/.vim/bundle/vimrc/bundle/vim-plugin-for-drupal/tagfiles/drupal7.tags

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-woody'
" let g:neosnippet#snippets_directory='~/.vim/bundle/vimrc/bundle/vim-plugin-for-drupal/'
" let g:neosnippet#snippets_directory='~/.vim/bundle/vimrc/bundle/vim-plugin-for-drupal/snipmate/drupal'
let g:mta_set_default_matchtag_color = 1" let g:neosnippet#snippets_directory='~/.vim/bundle/vimrc/bundle/vim-plugin-for-drupal/snipmate/drupal6'
" let g:neosnippet#snippets_directory='~/.vim/bundle/vimrc/bundle/vim-plugin-for-drupal/snipmate/drupal7'
"
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
    autocmd BufRead,BufNewFile *.info set filetype=php
  augroup END
endif
syntax on

" Vyska radku.
:set linespace=1



imap <Leader>br border: 1px solid red;

" Graficke zvyrazneni foldu
:set foldcolumn=5

"let g:project_use_nerdtree = 1
"set rtp+=~/.vim/bundle/vim-project/
" custom starting path
"call project#rc("/var/www/")
"call project#rc("~/Code")
" default starting path (the home directory)
"call project#rc()

"Project 'vimrc'
"File '~/.vimrc' , 'vimrc'

"Project 'zus'   
"File 'zus/sites/all/themes/woody/sass'  , 'sass'
"File 'zus/sites/all/themes/woody/sass/main.scss'  , 'main.scss'
"File 'zus/sites/all/themes/woody/sass/_drupal.scss'  , 'drupal'

" zvyraznuje parovou zavorku
:set mps+=<:>
:help matchpairs

let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'php' : 1,
    \}
let g:mta_use_matchparen_group = 1
let g:mta_set_default_matchtag_color = 1
nnoremap <leader>% :MtaJumpToOtherTag<cr>


" CtrlP
"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
  "\ 'dir':  '\v[\/]\.(git|hg|svn)$',
  "\ 'file': '\v\.(exe|so|dll)$',
  "\ 'link': 'some_bad_symbolic_links',
  "\ }
"let g:ctrlp_user_command = 'find %s -type f'





" Ctags (patch): http://designtomarkup.com/vim/taglist-ctags-css-patch
" Tagbar       : https://github.com/majutsushi/tagbar
" Screenshot   : http://twitpic.com/7zq4d7
 
"Tagbar
"noremap <silent> <Leader>t :<C-u>TagbarToggle<CR>
 
let g:tagbar_type_css = {
\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }



" http://luxiyalu.com/vim-ctags-for-js-less/

function! JumpToCSS()
  let id_pos = searchpos("id", "nb", line('.'))[1]
  let class_pos = searchpos("class", "nb", line('.'))[1]

  if class_pos > 0 || id_pos > 0
    if class_pos < id_pos
      execute ":vim '#".expand('<cword>')."' **/*.less"
    elseif class_pos > id_pos
      execute ":vim '.".expand('<cword>')."' **/*.less"
    endif
  endif
endfunction

nnoremap <leader>] :call JumpToCSS()<CR>zz




" let g:indent_guides_auto_colors = 1
" let g:IndentGuidesEnable = 1
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=silver   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"
"
let g:indent_guides_auto_colors = 1
" let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#212121 ctermbg=1
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#404040 ctermbg=1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" Reloading Your vimrc
" http://usevim.com/2015/07/01/reloading-vimrc/
" :source ~/.vimrc
" :so ~/.vimrc







