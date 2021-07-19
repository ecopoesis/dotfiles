## useful aliases

# set some aliases
alias df='df -h'
alias du='du -h'
alias grep='grep --color'
alias man="man -a"

# ls options: A = include hidden (but not . or ..), F = put `/` after folders, h = byte unit suffixes
hash gls >/dev/null 2>&1 && alias ls='gls -AFh --color=tty --group-directories-first'
alias lsd='ls -l | grep "^d"' # only directories

# List all files, long format, colorized, permissions in octal
function la(){
    ls -l  "$@" | awk '
    {
      k=0;
      for (i=0;i<=8;i++)
        k+=((substr($1,i+2,1)~/[rwx]/) *2^(8-i));
      if (k)
        printf("%0o ",k);
      printf(" %9s  %3s %2s %5s  %6s  %s %s %s\n", $3, $6, $7, $8, $5, $9,$10, $11);
    }'
}

# swap less for more
if [ -x "$(command -v less)" ]; then
  alias more='less -X -r'
fi

# make a tailf alias if there is no tailf
if ! [ -x "$(command -v tailf)" ]; then
  alias tailf='tail -f'
fi

# use homebrew git instead of xcode
if [ -f /usr/local/bin/git ] ; then
  alias git=/usr/local/bin/git
fi

# never accidentally emacs
alias emacs='vim'

# or vi
alias vi='vim'

# be smart
alias be='bundle exec'

# typos
alias exho='echo'

# lint only diff
alias lintruby='rubocop -a $(git ls-files -m | grep -v erb)'
