# Full path of the default login shell initialization file: /etc/skel/.profile.

# ~/.profile: executed by the command interpreter for login shells. This file is
# not read by bash(1), if ~/.bash_profile or ~/.bash_login exists. See
# /usr/share/doc/bash/examples/startup-files for examples. The files are located
# in the bash-doc package.

# The default umask is set in /etc/profile; for setting the umask for ssh
# logins, install and configure the libpam-umask package.




if [ "${XDG_DATA_HOME}" ]; then
    export HISTFILE="${XDG_DATA_HOME}/bash/bash_history"
else
    export HISTFILE="${HOME}/.local/share/bash/bash_history"
fi

export EDITOR=vim


if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

if [ -z "$SSH_AUTH_SOCK" ]; then
    eval $(ssh-agent -s)
    ssh-add
fi

export GNUPGHOME="${XDG_DATA_HOME}/gnupg"

export GRADLE_USER_HOME="${XDG_DATA_HOME}/gradle"

export LESSHISTFILE="${XDG_STATE_HOME}/less/history"

export GVIMINIT='let $MYGVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/gvimrc" : "$XDG_CONFIG_HOME/nvim/init.gvim" | so $MYGVIMRC'
export VIMINIT='let $MYVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/vimrc" : "$XDG_CONFIG_HOME/nvim/init.vim" | so $MYVIMRC'

sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get -y autoremove
sudo apt-get -y clean
