if command -v eza > /dev/null
then
	alias ls='eza --icons'
	alias la='ls -lah'
else
	alias ls='ls -G'
	alias la='ls -la'
fi
