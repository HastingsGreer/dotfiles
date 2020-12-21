set ai
set expandtab
set tabstop=4
set shiftwidth=4
set autoread
command B :w | execute ":silent !black ." | :redraw!


"set switchbuf+=usetab,newtab
set grepprg=rg\ --vimgrep

command -nargs=1 PackGrep :silent :grep! -sF -tpy --vimgrep <q-args> $(dirname $(which python))/../lib/python$(python --version | cut -c8-10)/ | tabe | cfirst


command Def :silent :grep! -sF -tpy --vimgrep "def <cword>(" $(dirname $(which python))/../lib/python$(python --version | cut -c8-10 )/ | tabe | cfirst
command Class :silent :grep! -sF -tpy --vimgrep "class <cword>" $(dirname $(which python))/../lib/python$(python --version | cut -c8-10 )/ | tabe | cfirst 

command Deff PackGrep "def <cword>("
