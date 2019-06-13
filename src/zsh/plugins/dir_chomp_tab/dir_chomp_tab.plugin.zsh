# echo the a shortened working directory
# will chomp down the chars needed for tab complete
# does not shorten final directory
# $1 is the min length to shorten
dir_chomp_tab() {
  begin=""            # The unshortened beginning of the path.
  shortbegin=""       # The shortened beginning of the path.
  current=""          # The section of the path we're currently working on.
  end="${2:-$(pwd)}/" # The unmodified rest of the path.

  if [[ "$end" =~ "$HOME" ]]; then
    INHOME=1
    end="${end#$HOME}"  # strip /home/username from start of string
    begin="$HOME"       # start expansion from the right spot
  else
    INHOME=0
  fi

  end="${end#/}"        # Strip the first /
  shortenedpath="$end"  # The whole path, to check the length.
  maxlength="${1:-0}"

  setopt null_glob    # Without this, anything that doesn't exist in the filesystem turns into */*/*/...

  while [[ "$end" ]] && (( ${#shortenedpath} > maxlength ))
  do
    current="${end%%/*}"  # everything before the first /
    end="${end#*/}"       # everything after the first /

    shortcur="$current"
    shortcurstar="$current"   # No star if we don't shorten it.

    if [ -n "$end" ]; then                    # skips shortening the final directory
      for ((i=${#current}-2; i>=0; i--)); do
        subcurrent=${current[0,${i}]}
        matching=("$begin/$subcurrent"*)      # Array of all files that start with $subcurrent.
        (( ${#matching[*]} != 1 )) && break   # Stop shortening if more than one file matches.
        shortcur="$subcurrent"
        shortcurstar="$subcurrent*"
      done
    fi

    # advance
    begin="$begin/$current"
    shortbegin="$shortbegin/$shortcurstar"
    shortenedpath="$shortbegin/$end"
  done

  shortenedpath="${shortenedpath%/}"  # strip trailing /
  shortenedpath="${shortenedpath#/}"  # strip leading /

  if [ "$INHOME" -eq 1 ]; then
    if [ -n "$shortenedpath" ]; then
      echo "~/$shortenedpath"         # make sure it starts with ~/
    else
      echo "~"                        # so when just in home there is no trailing slash
    fi
  else
    echo "/$shortenedpath"            # Make sure it starts with /
  fi
}
