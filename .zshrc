export ZSH=~/.zsh

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

autoload -U compinit promptinit
compinit
promptinit

PROMPT="%(!.%F{red}.%F{cyan})%n%{$reset_color%}@%{$fg[cyan]%}%m%{$reset_color%}:%{$fg_no_bold[yellow]%}%~%{$reset_color%}%# "
RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}] "
