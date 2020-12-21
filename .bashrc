
alias playpen="cd /playpen-raid1/tgreer/"
alias sshl="ssh -L 8888:localhost:8888 -L 8889:localhost:8889"
export PATH="/home/tgreer/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/playpen-raid1/tgreer/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/playpen-raid1/tgreer/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/playpen-raid1/tgreer/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/playpen-raid1/tgreer/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NIFTYREG_INSTALL="/home/tgreer/install/niftyreg_install/"
PATH=${PATH}:${NIFTYREG_INSTALL}/bin
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${NIFTYREG_INSTALL}/lib
export PATH
export LD_LIBRARY_PATH
