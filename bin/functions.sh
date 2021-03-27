function serve {
	python3 -m http.server $1	
}

# Use lf to switch directories and bind it to ctrl-o
# https://www.youtube.com/watch?v=eLEo4OQ-cuQ
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'
