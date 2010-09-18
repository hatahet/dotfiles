# .bashrc
# Source global definitions.
[ -f /etc/bashrc ] && . /etc/bashrc
case "$-" in (*i*) . "$HOME"/.bash/bashrc_interactive;; esac
