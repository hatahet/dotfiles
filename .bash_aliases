# .bash_aliases

alias ai='sudo aptitude install'
alias as='aptitude search'
alias ah='aptitude show'

alias l='ls -CF'
alias ll='ls -l'
alias la='ls -lA'

alias v='vim'
alias g='hub'
alias h='hg'

c() {
    case "$1" in
    -L|-P)
        opt=$1
        shift
        cd $opt "$@"
        ;;
    *)
        cd "$@"
        ;;
    esac
    ls
}

alias mq='hg -R $(hg root)/.hg/patches'

s() {
    ssh $* -t -- 'screen -D -R login'
}
