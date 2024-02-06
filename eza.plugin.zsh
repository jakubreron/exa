#!/bin/sh

# Exit if the 'eza' command could not be found
if ! (( $+commands[eza] )); then
    echo "ERROR: 'eza' command not found"
    return
fi

# Create alias override commands using 'eza'
alias ls='eza --group-directories-first --icons --no-git'
alias ll='ls -lh'
alias la='ll -a'
alias tree='ll --tree --level=2'
