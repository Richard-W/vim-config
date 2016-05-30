execute pathogen#infect()
syntax on
filetype plugin indent on

" Remove gui elements in gvim
set guioptions=0

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

" Define YCM keybindings
nnoremap gdc :YcmCompleter GoToDeclaration<CR>
nnoremap gdf :YcmCompleter GoToDefinition<CR>
nnoremap fxt :YcmCompleter FixIt<CR>
nnoremap gdd :YcmDiags<CR>
