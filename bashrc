set -o notify

export SVN_EDITOR="vim" 

# load bash_completion 
export BASH_COMPLETION="`cd ~; pwd`/.completion"
export BASH_COMPLETION_DIR="`cd ~; pwd`/.completion.d"
source $BASH_COMPLETION

# Don't put duplicate lines in the history.
export HISTCONTROL="ignoredups"

# set some aliases
alias df='df -h'
alias du='du -h'
alias grep='grep --color'

UNAME=`uname`
if [ "$UNAME" == "Linux" ]; then
   alias ls='ls --color=auto -hF'
fi
if [ "$UNAME" == "Darwin" ]; then
   alias ls='ls -GhF'
fi

# set short hostname for the prompt
SHORTHOST=`hostname`
SHORTHOST=${SHORTHOST/\.smartertravel*/}

# echo the a shortened pwd. 
# will chomp down the chars needed for tab complete
# does not shorten final directory
# $1 is the min length to shorten
_dir_chomp_tab () {
  begin="" # The unshortened beginning of the path.
  shortbegin="" # The shortened beginning of the path.
  current="" # The section of the path we're currently working on.
  end="${2:-$(pwd)}/" # The unmodified rest of the path.

  if [[ "$end" =~ "$HOME" ]]; then
    INHOME=1
    end="${end#$HOME}" #strip /home/username from start of string
    begin="$HOME"      #start expansion from the right spot
  else
    INHOME=0
  fi

  end="${end#/}" # Strip the first /
  shortenedpath="$end" # The whole path, to check the length.
  maxlength="${1:-0}"

  shopt -q nullglob && NGV="-s" || NGV="-u" # Store the value for later.
  shopt -s nullglob    # Without this, anything that doesn't exist in the filesystem turns into */*/*/...

  while [[ "$end" ]] && (( ${#shortenedpath} > maxlength ))
  do
    current="${end%%/*}" # everything before the first /
    end="${end#*/}"    # everything after the first /

    shortcur="$current"
    shortcurstar="$current" # No star if we don't shorten it.

    if [ -n "$end" ]; then # skips shortening the final directory
      for ((i=${#current}-2; i>=0; i--)); do
        subcurrent="${current:0:i}"
        matching=("$begin/$subcurrent"*) # Array of all files that start with $subcurrent. 
        (( ${#matching[*]} != 1 )) && break # Stop shortening if more than one file matches.
        shortcur="$subcurrent"
        shortcurstar="$subcurrent*"
      done
    fi

    #advance
    begin="$begin/$current"
    shortbegin="$shortbegin/$shortcurstar"
    shortenedpath="$shortbegin/$end"
  done

  shortenedpath="${shortenedpath%/}" # strip trailing /
  shortenedpath="${shortenedpath#/}" # strip leading /

  if [ $INHOME -eq 1 ]; then
    if [ -n "$shortenedpath" ]; then
      echo "~/$shortenedpath" #make sure it starts with ~/
    else
      echo "~" # so when just in home there is no trailing slash
    fi 
  else
    echo "/$shortenedpath" # Make sure it starts with /
  fi

  shopt "$NGV" nullglob # Reset nullglob 
}

_prompt_command () {
  # set some colors
 
  # regular text colors
  txtblk='\[\033[0;30m\]' # Black 
  txtred='\[\033[0;31m\]' # Red
  txtgrn='\[\033[0;32m\]' # Green
  txtylw='\[\033[0;33m\]' # Yellow
  txtblu='\[\033[0;34m\]' # Blue
  txtpur='\[\033[0;35m\]' # Purple
  txtcyn='\[\033[0;36m\]' # Cyan
  txtwht='\[\033[0;37m\]' # White
  
  # bold text colors
  bldblk='\[\033[1;30m\]' # Black 
  bldred='\[\033[1;31m\]' # Red
  bldgrn='\[\033[1;32m\]' # Green
  bldylw='\[\033[1;33m\]' # Yellow
  bldblu='\[\033[1;34m\]' # Blue
  bldpur='\[\033[1;35m\]' # Purple
  bldcyn='\[\033[1;36m\]' # Cyan
  bldwht='\[\033[1;37m\]' # White
  
  # background colors
  bakblk='\[\033[40m\]'   # Black
  bakred='\[\033[41m\]'   # Red
  badgrn='\[\033[42m\]'   # Green
  bakylw='\[\033[43m\]'   # Yellow
  bakblu='\[\033[44m\]'   # Blue
  bakpur='\[\033[45m\]'   # Purple
  bakcyn='\[\033[46m\]'   # Cyan
  bakwht='\[\033[47m\]'   # White

  txtrst='\[\033[0m\]'    # Text Reset

  # get the short pwd
  SHORTPWD=$(_dir_chomp_tab 20)

  # set the titlebar
  case $TERM in
    xterm*)
      TITLEBAR='\[\033]0;\u@${SHORTHOST}:\w\007\]'
      ;;
    *)
      TITLEBAR=""
      ;;
  esac
 
  # detect if we're in screen
  if [[ "$TERMCAP" =~ "screen" ]]; then
    SCREENINFO="$txtblk#$txtpur${WINDOW}"
  else
    SCREENINFO=""
  fi 

  # set the prompts
  PS1="${TITLEBAR}$bakwht$txtgrn[$txtblu\u$txtblk@$txtred${SHORTHOST}${SCREENINFO}$txtblk:$txtblu${SHORTPWD}$txtgrn]$ $txtrst"
  PS2='> '
  PS4='+ '
}

# set the prompt command
PROMPT_COMMAND=_prompt_command
export PROMPT_COMMAND
