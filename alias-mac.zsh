if command -v eza > /dev/null
then
	alias ls='eza --icons'
	alias la='ls -lah'
	alias la-t='la -t modified --sort oldest'
else
	alias ls='ls -G'
	alias la='ls -la'
fi
