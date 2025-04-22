execute pathogen#infect()
syntax on
filetype plugin indent on

" Remove gui elements in gvim
set guioptions=c

" Configure solarized colors
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Map NERDTreeToggle
nnoremap # :NERDTreeToggle<CR>

" Map alternative ESC key
inoremap jj <ESC>

" Define fallback config for YCM
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_conf.py'

" Define path to rust sources for std autocompletion
let g:ycm_rust_src_path = $HOME . '/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'

" Define YCM keybindings
nnoremap gdc :YcmCompleter GoToDeclaration<CR>
nnoremap gdf :YcmCompleter GoToDefinition<CR>
nnoremap gdr :YcmCompleter GoToReferences<CR>
nnoremap fxt :YcmCompleter FixIt<CR>
nnoremap gdd :YcmDiags<CR>
nnoremap cpr ggO/* Copyright <ESC>:r! date +\%Y<CR>i<BS><ESC>$a <ESC>:r! echo $CPR_NAME<CR>i<BS><ESC>$a <<ESC>:r! echo $CPR_EMAIL<CR>i<BS><ESC>$a> */<ESC>
