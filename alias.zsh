if command -v eza > /dev/null
then
	alias ls='eza'
	alias la='eza -lh'
else
	alias ls='ls --color=auto'
	alias la='ls -la --block-size=K'
fi

alias pbcopy='wl-copy'
alias pbpaste='wl-paste'
