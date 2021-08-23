" Non-plugin customizations
    " leader key
    map <Space> <Leader>
    "keymaps
    imap jj <esc>
    " leaders
    nnoremap <leader>w :w<CR>
    set number
    set hidden
    set autochdir
    set incsearch
    set relativenumber
    set encoding=UTF-8
    " stop all the hit ENTER to continue messages
    set cmdheight=2
    syntax on

call plug#begin('~/.vim/plugged')
    Plug 'justinmk/vim-dirvish'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mhartington/oceanic-next'
    Plug 'elzr/vim-json'
    Plug 'othree/yajs.vim'
    Plug 'MaxMEllon/vim-jsx-pretty'
    Plug 'mattn/emmet-vim'
    Plug 'moll/vim-node'
    Plug 'jaxbot/semantic-highlight.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-surround'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'vim-syntastic/syntastic'
    Plug 'mhinz/vim-startify'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
	" javascript syntax
	Plug 'jelera/vim-javascript-syntax'
    " cool blue theme
    Plug 'arcticicestudio/nord-vim'
    " incsearch
    Plug 'haya14busa/incsearch.vim'
    Plug 'sbdchd/neoformat'
    " Vim Shell for Delve
    Plug 'Shougo/vimshell.vim'
    " Git marks, staging hunks
    Plug 'airblade/vim-gitgutter'
    " class outline
    Plug 'majutsushi/tagbar'
    " might slow down vim
    Plug 'vwxyutarooo/nerdtree-devicons-syntax'
    " simple statusline
    Plug 'itchyny/lightline.vim'
    " better auto read - doesn't require buffer change
    Plug 'djoshea/vim-autoread'
    " tab-completion for all the completions
    Plug 'ervandew/supertab'
    " fast comment toggling
    Plug 'scrooloose/nerdcommenter'
    " surround things with parens/quotes
    Plug 'tpope/vim-surround'
    " Git helpers
    Plug 'tpope/vim-fugitive'
    Plug 'tommcdo/vim-fugitive-blame-ext'
    " Whitespace stripping"
    Plug 'ntpeters/vim-better-whitespace'
    " Multi-select like sublime (there is a tutorial)
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    " faster/fuzzier searching in buffers
    Plug 'easymotion/vim-easymotion'
    " markdown
        " preview
        Plug 'shime/vim-livedown'
        " formatting
        Plug 'plasticboy/vim-markdown'
        " better folding
        Plug 'masukomi/vim-markdown-folding'
    " indent guides
    " Plug 'nathanaelkane/vim-indent-guides'
	Plug 'Yggdroot/indentLine'
    " aligning text
    Plug 'godlygeek/tabular'
    " html
    Plug 'othree/html5.vim'
    Plug 'alvan/vim-closetag'
    " fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " set cwd to the git root
    Plug 'airblade/vim-rooter'
    " rainbow parens
    Plug 'luochen1990/rainbow'
    " nice icons for file paths
    Plug 'ryanoasis/vim-devicons'
    " golang
   Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
   Plug 'sebdah/vim-delve'
call plug#end()

let g:rainbow_active = 1
let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 0

" obvious-resize
noremap <silent> <C-Up> :<C-U>ObviousResizeUp<CR>
noremap <silent> <C-Down> :<C-U>ObviousResizeDown<CR>
noremap <silent> <C-Left> :<C-U>ObviousResizeLeft<CR>
noremap <silent> <C-Right> :<C-U>ObviousResizeRight<CR>

" nerdtree
" toggle nerdtree with leader-n
map <leader>t :NERDTreeFind<CR>
" close the nerdtree when a file is opened from it
let NERDTreeQuitOnOpen = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinPos = "right"

" incsearch


" Whitespace stripping
    autocmd BufEnter * EnableStripWhitespaceOnSave
    let g:strip_whitespace_confirm=0

let g:prettier#exec_cmd_path = "~/usr/local/bin/prettier"
set rtp+=/usr/local/opt/fzf
"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1
autocmd StdinReadPre * let s:std_in=1
autocmd BufWritePre,TextChanged,InsertLeave *.js Neoformat
colorscheme nord
highlight Comment ctermbg=None
highlight Comment ctermfg=None
highlight jsxCloseString ctermbg=None
highlight jsxCloseTag ctermbg=None
highlight jsxPunct ctermbg=None

" Easy motion
    " jk motions: up/down lines
    nmap J <Plug>(easymotion-j)
    nmap K <Plug>(easymotion-k)
    vmap J <Plug>(easymotion-j)
    vmap K <Plug>(easymotion-k)
    " lh motions: right/left in line
    nmap L <Plug>(easymotion-lineforward)
    nmap H <Plug>(easymotion-linebackward)
    vmap L <Plug>(easymotion-lineforward)
    vmap H <Plug>(easymotion-linebackward)
    " Jump to anywhere with only `s{char}{target}`
    nmap s :Limelight!<CR><Plug>(easymotion-bd-fn)
    " Jump to anywhere in this line with only `s{char}{target}`
    nmap f <Plug>(easymotion-bd-fln)

" Indent guide colors
    "let g:indent_guides_auto_colors = 1
    "let g:indent_guides_enable_on_vim_startup = 1
	syntax enable
	set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
    "hi IndentGuidesOdd ctermbg=darkgrey
    "hi IndentGuidesEven ctermbg=black
    "set tabstop=4
    "set shiftwidth=2
    "set ts=4 sw=4 noet
    "let g:indent_guides_start_level=2
    "let g:indent_guides_guide_size=1

" vim-rooter
    let g:rooter_manual_only = 1
    " change current working directory for the local file when you switch buffers
    " http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
    nnoremap <leader>dc :lcd %:p:h<cr>
    nnoremap <leader>dr :Rooter<cr>

" supertab
    " return key closes the completion window without inserting newline
    let g:SuperTabCrMapping = 1
    " context-aware tab completion (filepath/function/text)
    let g:SuperTabDefaultCompletionType = "context"
    "let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"


" lightline
    " show the line
    set laststatus=2
    " set extra config
    let lightline = {
        \ 'colorscheme': 'solarized',
        \ 'component': {
            \ 'lineinfo': ' %3l:%-2v',
        \ },
        \ 'component_function': {
            \ 'filetype': 'DevIconFiletype',
            \ 'fileformat': 'DevIconFileformat',
            \ 'readonly': 'LightlineReadonly',
            \ 'fugitive': 'LightlineFugitive',
            \ 'tag': 'LightlineTagbar',
            \ 'gitstatus': 'GitStatus',
        \ },
    \ 'separator': { 'left': "\ue0b4", 'right': "\ue0b6" },
    \ 'subseparator': { 'left': "\ue0b5", 'right': "\ue0b7" },
    \ }

    function! LightlineTagbar()
        return tagbar#currenttag('%s', '')
    endfunction
    function! LightlineReadonly()
        return &readonly ? '' : ''
    endfunction
    function! LightlineFugitive()
        if exists('*fugitive#head')
            let branch = fugitive#head()
            return branch !=# '' ? ''.branch : ''
        endif
        return ''
    endfunction
    function! DevIconFiletype()
        return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
    endfunction
    function! DevIconFileformat()
        return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
    endfunction
    function! GitStatus()
      let [a,m,r] = GitGutterGetHunkSummary()
      return printf('+%d ~%d -%d', a, m, r)
    endfunction
    let lightline.active = {
    \ 'left': [ [ 'mode', 'paste' ],
    \           [ 'readonly', 'filename', 'modified', 'tag' ],
    \           [ 'gitstatus' ] ],
    \ 'right': [ [ 'lineinfo' ],
    \            [ 'percent' ],
    \            [ 'fileformat', 'fileencoding', 'filetype' ],
    \            [ 'fugitive', 'conflicts' ],
    \          ] }
    let g:lightline.inactive = {
    \ 'left': [ [ 'filename' ] ],
    \ 'right': [ [ 'lineinfo' ],
    \            [ 'percent' ],
    \            [ 'fugitive', 'conflicts' ] ] }
    " don't show mode, because lightline shows the mode
    set noshowmode

 " Git gutter
    set signcolumn=yes
    set updatetime=100
    "let g:gitgutter_highlight_lines = 1
    let g:gitgutter_highlight_linenrs = 1
    let g:gitgutter_preview_win_floating = 1
    let g:gitgutter_sign_removed = 'x'
    " disable default key mappings
    let g:gitgutter_map_keys = 0
    " custom keymappings
    nmap <leader>hn <Plug>(GitGutterNextHunk)
    nmap <leader>hp <Plug>(GitGutterPrevHunk)
    nmap <leader>hs <Plug>(GitGutterStageHunk)
    nmap <leader>hu <Plug>(GitGutterUndoHunk)
    nmap <leader>hv <Plug>(GitGutterPreviewHunk)
    nmap <leader>hf <Plug>(GitGutterFold)
    set foldtext=gitgutter#fold#foldtext()

 " golang {{{
    let g:go_debug = ['shell-commands']
    let g:go_code_completion_enabled = 0
    let g:go_fmt_command = "gofumports"
    let g:go_fmt_fail_silently = 1
    let g:go_highlight_build_constraints = 1
    let g:go_highlight_extra_types = 1
    let g:go_highlight_fields = 1
    let g:go_highlight_functions = 1
    let g:go_highlight_methods = 1
    let g:go_highlight_operators = 1
    let g:go_highlight_structs = 1
    let g:go_highlight_types = 1
    let g:go_auto_type_info = 1
    map <C-G> :GoDef<CR>

    " lol no generics
    autocmd BufNewFile,BufRead *.go_gen set syntax=go
" }}}

" open
map <C-O> :Files<CR>


" find
map <C-F> :Ag!<CR>
command! -bang -nargs=* Ag
\ call fzf#vim#ag(<q-args>,
\                 <bang>0 ? fzf#vim#with_preview({'options': ['--reverse', '--height', '100%', '--preview-window', 'right:60%']})
\                         : fzf#vim#with_preview('right:70%:hidden', '?'),
\                 <bang>0)

set noautochdir
