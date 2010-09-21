# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# include local bin if it exists
if [ -d "$HOEM/local/bin" ]; then
    PATH="$HOME/local/bin:$PATH"
fi

if [ -d /opt/nrn/x86_64/bin/ ]; then
    PATH="$PATH:/opt/nrn/x86_64/bin/"
fi

if [ ! -d /tmp/vimswap ];  then
    mkdir /tmp/vimswap
fi

if [ ! -d /var/tmp/vimbackup ]; then
    mkdir /var/tmp/vimbackup
fi

export EDITOR=vim
export PAGER=less
