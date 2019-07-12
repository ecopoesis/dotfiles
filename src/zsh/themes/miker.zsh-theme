# ZSH Theme
## [user@host#0/shrt/dir/name] (branch *)$

CURRENT_BG='NONE'

# Special Powerline characters

# Begin a segment
# Takes two arguments, background and foreground. Both can be omitted,
# rendering default background/foreground.
prompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
  if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
    echo -n "%{$bg%F{$CURRENT_BG}%}%{$fg%}"
  else
    echo -n "%{$bg%}%{$fg%}"
  fi
  CURRENT_BG=$1
  [[ -n $3 ]] && echo -n $3
}

# End the prompt, closing any open segments
prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
    echo -n "%{%k%F{$CURRENT_BG}%}"
  else
    echo -n "%{%k%}"
  fi
  echo -n "%{%f%}"
  CURRENT_BG=''
}

### Prompt components
# Each component will draw itself, and hide itself if no information needs to be shown

prompt_exitcode() {
  [[ $RETVAL -ne 0 ]] && prompt_segment red black " $RETVAL "
}

prompt_open() {
  prompt_segment default green "["
}

prompt_close() {
  prompt_segment default green "]"
}

prompt_user() {
  prompt_segment default blue "%n"
}

prompt_at() {
  prompt_segment default black "@"
}

prompt_host() {
  prompt_segment default 009 "%m"
}

prompt_tmux() {
  if [ -n "$TMUX" ]; then
    prompt_segment default default "#"
    prompt_segment default 005 "$(tmux display-message -p '#I')"
  fi
}

prompt_colon() {
  prompt_segment default default ":"
}

prompt_prompt() {
  prompt_segment default green "$"
}

# Git: branch/detached head, dirty status
prompt_git() {
  (( $+commands[git] )) || return
  if [[ "$(git config --get oh-my-zsh.hide-status 2>/dev/null)" = 1 ]]; then
    return
  fi
  local ref dirty mode repo_path

  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    repo_path=$(git rev-parse --git-dir 2>/dev/null)
    dirty=$(parse_git_dirty)
    ref=$(git symbolic-ref HEAD 2> /dev/null) || ref="➜ $(git rev-parse --short HEAD 2> /dev/null)"
    prompt_segment default green " ("

    if [[ -e "${repo_path}/BISECT_LOG" ]]; then
      mode=" 𝗕"
    elif [[ -e "${repo_path}/MERGE_HEAD" ]]; then
      mode=" 𝗠"
    elif [[ -e "${repo_path}/rebase" || -e "${repo_path}/rebase-apply" || -e "${repo_path}/rebase-merge" || -e "${repo_path}/../.dotest" ]]; then
      mode=" 𝗥"
    fi

    setopt promptsubst
    autoload -Uz vcs_info

    zstyle ':vcs_info:*' enable git
    zstyle ':vcs_info:*' get-revision true
    zstyle ':vcs_info:*' check-for-changes true
    zstyle ':vcs_info:*' stagedstr '✚ '
    zstyle ':vcs_info:*' unstagedstr '● '
    zstyle ':vcs_info:*' formats ' %u%c'
    zstyle ':vcs_info:*' actionformats ' %u%c'
    vcs_info
    prompt_segment default 013
    echo -n "${ref/refs\/heads\//}"

    prompt_segment default yellow "${vcs_info_msg_0_%% }${mode}"

    if [[ -n $dirty ]]; then
      prompt_segment default yellow " ✱"
    fi

    prompt_segment default green ")"
  fi
}

prompt_dir() {
  prompt_segment default 012 "$(dir_chomp_tab 20)"
}

prompt_pyenv() {
  PYENV="$(pyenv_prompt_info)"
  if [ "$PYENV" != "system" ]; then
    prompt_segment default green " $PYENV\n"
  fi
}

prompt_nvm() {
  if [ -x "$(command -v nvm)" ]; then
    NVM_CURRENT="$(nvm current)"
    NVM_DEFAULT="$(nvm version default)"
    if [ "$NVM_CURRENT" != "$NVM_DEFAULT" ]; then
      prompt_segment default 034 " $NVM_CURRENT\n"
    fi
  fi
}

prompt_rvm() {
  if [ -x "$(command -v rvm-prompt)" ]; then
    RVM="$(rvm-prompt i v g p -d)"
    if [ ! -z "$RVM" ]; then
      prompt_segment default 160 " $RVM\n"
    fi
  fi
}

## Main prompt
build_prompt() {
  RETVAL=$?
  prompt_pyenv
  prompt_nvm
  prompt_rvm
  prompt_exitcode
  prompt_open
  prompt_user
  prompt_at
  prompt_host
  prompt_tmux
  prompt_colon
  prompt_dir
  prompt_close
  prompt_git
  prompt_prompt
  prompt_end
}

PROMPT='%{%f%b%k%}$(build_prompt) '
