if command -v eza > /dev/null
then
	alias ls='eza'
	alias la='eza -lh'
else
	alias ls='ls -G'
	alias la='ls -la'
fi
