set ai
set expandtab
set tabstop=4
set shiftwidth=4
set autoread
set softtabstop=-1

set number

command B :w | execute ":silent !black ." | :redraw!

"set switchbuf+=usetab,newtab
set grepprg=rg\ --vimgrep

command Gw :silent :grep! -sF --vimgrep <cword> . | tabe | cfirst
command -nargs=1 Gr :silent :grep! -sF --vimgrep <q-args> . | tabe | cfirst

command -nargs=1 PackGrep :silent :grep! -sF -tpy --vimgrep <q-args> . $(dirname $(which python))/../lib/python$(python --version  \| cut -c8-10)/ | tabe | cfirst 

command Def :silent :grep! -s -tpy --vimgrep "def <cword>\(\|class <cword>[\(:]" . $(dirname $(which python))/../lib/python$(python --version  \| cut -c8-10)/ | tabe | cfirst 

command Deff PackGrep def <cword>

map <f8> :w<cr>:!pdflatex % <cr><cr>
imap <f8> <esc>:w<cr> :!pdflatex % <cr><cr>i

map <f9> :w<cr>:!python % <cr>
imap <f9> <esc>:w<cr> :!python % <cr>
