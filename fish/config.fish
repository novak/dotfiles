# Disable the greeting.
set fish_greeting

set -gx XDG_DATA_DIRS /Users/mrn/.config:$XDG_DATA_DIRS
set -gx EDITOR "subl -n -w"
set -gx HOME /Users/mrn

set -gx ANDROID_HOME $HOME/Library/Android/sdk

alias ll="gls -vAhlF --color --group-directories-first"
alias grep="grep --color=auto -n -I"

function jdk
  set -gx JAVA_HOME $(/usr/libexec/java_home -v $argv[1]);
  java -version
end

# Adds postgres tools to the path
set -gx PATH /Applications/Postgres.app/Contents/Versions/latest/bin:$PATH

set -gx PATH $HOME/.yarn/bin:$PATH
set -gx PATH /opt/homebrew/bin:$PATH

# NVM support
set -gx NVM_DIR ~/.nvm

starship init fish | source
