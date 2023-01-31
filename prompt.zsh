# Purification
# by Matthieu Cneude
# https://github.com/Phantas0s/purification

# Based on:

# Purity
# by Kevin Lanni
# https://github.com/therealklanni/purity
# MIT License

# prompt:
# %F => color dict
# %f => reset color
# %~ => current path
# %* => time
# %n => username
# %m => shortname host
# %(?..) => prompt conditional - %(condition.true.false)


prompt_purification_setup() {

    autoload -Uz add-zsh-hook

    PROMPT=$'%F{magenta}%~ %B%F{green}$%f%b '
}

prompt_purification_setup
