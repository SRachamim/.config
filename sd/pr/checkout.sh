git checkout $(~/.config/sd/pr/list.sh | fzf --preview='git log origin/develop..origin/{}' --preview-window=top:wrap)
