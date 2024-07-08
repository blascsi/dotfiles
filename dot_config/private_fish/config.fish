fish_add_path ~/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
    # Set up ASDF
    source ~/.asdf/asdf.fish

    # Set up FZF
    fzf --fish | source

    # Set up starship
    starship init fish | source
end

# If this file exists, we are probably in WSL
# so we can set up WSL specific things
if test -e /proc/sys/fs/binfmt_misc/WSLInterop
    alias ssh "ssh.exe"
end