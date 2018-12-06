alias nv_gpu='mosh -p 60000 -ssh="ssh -X -i aditya_nvirginia.pem" ubuntu@nv_gpu'
alias nv_gpu2='mosh -p 60000 -ssh="ssh -X -i aditya_nvirginia.pem" ubuntu@nv_gpu2'
alias nv_cpu='mosh -p 60000 -ssh="ssh -X -i aditya_nvirginia.pem" ubuntu@nv_cpu'
alias mumbai_gpu='mosh -ssh="ssh -X -i aditya_mumbai.pem" ubuntu@mumbai_gpu'
alias mumbai_cpu='mosh -ssh="ssh -X -i aditya_mumbai.pem" ubuntu@mumbai_cpu'
alias mumbai_optimized_cpu='mosh -ssh="ssh -X -i aditya_mumbai.pem" ubuntu@mumbai_optimized_cpu'
alias puri='ssh adityaas@puri'
alias peda='ssh adityaas@peda'
alias idli='ssh adityaas@idli'
alias momo='ssh adityaas@momo'
alias dosa='ssh adityaas@dosa'
alias poha='ssh adityaas@poha'
alias pani='ssh adityaas@pani'
alias puriui='ssh -X adityaas@puri'
alias pedaui='ssh -X adityaas@peda'
alias idliui='ssh -X adityaas@idli'
alias momoui='ssh -X adityaas@momo'
alias dosaui='ssh -X adityaas@dosa'
alias pohaui='ssh -X adityaas@poha'
alias paniui='ssh -X adityaas@pani'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "


export OPENNI2_INCLUDE=/usr/local/include/ni2
export OPENNI2_REDIST=/usr/local/lib/ni2

export LIBFREENECT2_INSTALL_PREFIX=/usr/local/

# added by Anaconda3 5.3.0 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/adityasharma/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/adityasharma/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/adityasharma/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/adityasharma/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

#export AWS_RDS='adityasinstance.cuoj7kzvxax8.ap-south-1.rds.amazonaws.com:3306/?Action=connect&DBUser=aditya&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIXXRH66CZFYLA63A%2F20181024%2Fap-south-1%2Frds-db%2Faws4_request&X-Amz-Date=20181024T173750Z&X-Amz-Expires=900&X-Amz-SignedHeaders=host&X-Amz-Signature=46220b40eefb5cb8620e5cbd5dee1fe8f853b0837c14738a659bab2618e9772'

export AWS_RDS='adityasbdinstance.cuoj7kzvxax8.ap-south-1.rds.amazonaws.com:3306/?Action=connect&DBUser=aditya&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIXXRH66CZFYLA63A%2F20181029%2Fap-south-1%2Frds-db%2Faws4_request&X-Amz-Date=20181029T043131Z&X-Amz-Expires=900&X-Amz-SignedHeaders=host&X-Amz-Signature=af0b1c4958623de68acbd42583b4bd9d5b9852813b80c6dde6502c5159b92819'

alias aditya_rds_mysql='mysql --host=adityasbdinstance.cuoj7kzvxax8.ap-south-1.rds.amazonaws.com --port=3306 --ssl-ca=rds-combined-ca-bundle.pem --enable-cleartext-plugin --user=aditya --password=password'

export MYSQLIMPORT='mysqlimport --local --host=adityasbdinstance.cuoj7kzvxax8.ap-south-1.rds.amazonaws.com --port=3306 --ssl-ca=rds-combined-ca-bundle.pem --enable-cleartext-plugin --user=aditya --password=password'


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export PATH="$PATH:/Users/adityasharma/PersonalProjects/openmpi/bin:/opt/local/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/Users/adityasharma/PersonalProjects/openmpi/lib"
##conda activate py37

export SMPLIFY_PATH=/Users/adityasharma/WadhwaniAI/projects/smplify_public/code
export SMPL_PATH=/Users/adityasharma/WadhwaniAI/projects/smpl
