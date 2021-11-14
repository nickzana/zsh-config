export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=1000
export SAVEHIST=100
export HIST_SAVE_NO_DUPS
export EDITOR="nvim"
export VISUAL="nvim"
export QUBES_GPG_DOMAIN=dev-gpg
export PATH=$PATH:/home/user/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin/
. "$HOME/.cargo/env"

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH
