execute pathogen#infect()

" Highlight
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" NERDComment
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
map <C-n> :NERDTreeToggle<CR>

set number
set ignorecase
set nosol
syntax on

" backspace delete in insert mode
set backspace=indent,eol,start

filetype plugin indent on
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set list

" tab width
set tabstop=4

" indent after new line
set shiftwidth=4

function! SwitchTabs()
    if &l:expandtab == 0
        :set expandtab
    else
        :set noexpandtab
    endif
endfunction

nnoremap <leader>ts      :call SwitchTabs()<CR>

" reload rc file
nnoremap <Leader>vr :source $MYVIMRC<CR>

colorscheme dracula
