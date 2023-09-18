if command -v eza > /dev/null
then
	alias ls='eza --icons'
	alias la='ls -lah'
else
	alias ls='ls --color=auto'
	alias la='ls -la --block-size=K'
fi

alias pbcopy='wl-copy'
alias pbpaste='wl-paste'
