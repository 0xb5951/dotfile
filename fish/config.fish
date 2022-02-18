if status is-interactive
    # Commands to run in interactive sessions can go here
end

# PATH系
fish_add_path /opt/homebrew/bin
fish_add_path /Users/mike/development/flutter/bin
fish_add_path /usr/local/texlive/2021basic/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mike/google-cloud-sdk/path.fish.inc' ]; . '/Users/mike/google-cloud-sdk/path.fish.inc'; end

# pyenv
set -x PYENV_ROOT $HOME/.pyenv                                                                                                                         Fri Feb 18 11:39:26 2022
set -x PATH $PYENV_ROOT/bin $PATH
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source
