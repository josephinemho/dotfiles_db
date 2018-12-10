# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

# Change font colors
PS1='\[\033[1;35m\]\u\[\033[1;33m\]@\[\033[1;36m\]\h:\[\033[1;31m\]\w\[\033[1;33m\]\$\[\033[0m\] '

# User specific aliases and functions
alias gitupdate='cd Exercises/; export TZ=America/Los_Angeles; date >> testfile.txt; git add testfile.txt; git commit -m "added testfile"; git push origin master'

