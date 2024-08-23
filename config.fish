if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test -z "$TMUX"
    if test -n "$SSH_CONNECTION"
        tmux attach-session -t ssh_tmux; or tmux new-session -s ssh_tmux
    end
end

if test -z "$TMUX"
    if test -n "$TTY_CONNECTION"
        tmux attach-session -t tty_tmux; or tmux new-session -s tty_tmux
    end
end
