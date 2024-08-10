#!/bin/bash

# Function to provide autocomplete for project names
_complete_project_names() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls ./projects)" -- $cur) )
}

# Enable autocomplete for the project_name variable
complete -F _complete_project_names project_name

# Read project name with autocomplete
read -e -p "Enter the project name: " project_name

# Output the project name to be captured by Makefile
echo $project_name