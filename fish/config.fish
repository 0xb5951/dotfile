if status is-interactive
    # Commands to run in interactive sessions can go here
end

# PATH系
fish_add_path /opt/homebrew/bin
fish_add_path /Users/mike/development/flutter/bin
fish_add_path /usr/local/texlive/2021basic/bin
fish_add_path /usr/local/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mike/google-cloud-sdk/path.fish.inc' ]; . '/Users/mike/google-cloud-sdk/path.fish.inc'; end

# pyenv
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source
