# .bashrc
# Source global definitions.
[ -f /etc/bashrc ] && . /etc/bashrc
case "$-" in (*i*) . "$HOME"/.bashrc_interactive;; esac
