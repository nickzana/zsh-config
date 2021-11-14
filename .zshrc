# Make alacritty properly update window title
case ${TERM} in

  alacritty*|xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
     PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

# zsh stuff
autoload -U compinit; compinit
_comp_options+=(globaldots) # enable hidden files
source $ZDOTDIR/completion.zsh
source $ZDOTDIR/prompt.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/fzf/shell/key-bindings.zsh

alias vim=nvim
alias vi=nvim
