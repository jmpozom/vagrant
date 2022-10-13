# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
# <LOCALCONFIGURATION>
if [ -f ~/.my_bashrc ]; then . ~/.my_bashrc; fi
# </LOCALCONFIGURATION>
