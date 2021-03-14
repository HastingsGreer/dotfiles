set ai
set expandtab
set tabstop=4
set shiftwidth=4
set autoread
set softtabstop=-1
command B :w | execute ":silent !black ." | :redraw!

"set switchbuf+=usetab,newtab
set grepprg=rg\ --vimgrep

command -nargs=1 PackGrep :silent :grep! -sF -tpy --vimgrep <q-args> . $(dirname $(which python))/../lib/python$(python --version  \| cut -c8-10)/ | tabe | cfirst 

command Def :silent :grep! -s -tpy --vimgrep "def <cword>\(\|class <cword>[\(:]" . $(dirname $(which python))/../lib/python$(python --version  \| cut -c8-10)/ | tabe | cfirst 

command Deff PackGrep def <cword>

command Gr :silent grep! -sF --vimgrep <cword> . | tabe | cfirst

map <f8> :w<cr>:!pdflatex % <cr><cr>
imap <f8> <exc>:w<cr> :!pdflatex % <cr><cr>i
