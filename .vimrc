set ai
set expandtab
set tabstop=4
set shiftwidth=4
set autoread
set softtabstop=-1

"set number

command B :w | execute ":silent !black ." | :redraw!

"set switchbuf+=usetab,newtab
set grepprg=rg\ --vimgrep

"Grep for the word under the cursor
command Gw :silent :grep! -sF --vimgrep <cword> . | tabe | cfirst
"Grep for an argument
command -nargs=1 Gr :silent :grep! -sF --vimgrep <q-args> . | tabe | cfirst


command -nargs=1 PackGrep :silent :grep! -sF -tpy --vimgrep <q-args> . $(dirname $(which python))/../lib/python$(python --version  \| cut -c8-10)/ | tabe | cfirst 

"Find the definition of a python class or function under the cursor
command Def :silent :grep! -s -tpy --vimgrep "def <cword>\(\|class <cword>[\(:]" . $(dirname $(which python))/../lib/python$(python --version  \| cut -c8-10)/ | tabe | cfirst 

command Deff PackGrep def <cword>

map <f8> :w<cr>:!pdflatex % <cr><cr>
imap <f8> <esc>:w<cr> :!pdflatex % <cr><cr>i

map <f9> :w<cr>:!python % <cr>
imap <f9> <esc>:w<cr> :!python % <cr>

map <f10> :w<cr><c-w>l<up><cr><c-w>h
