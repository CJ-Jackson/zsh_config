zstyle '*' single-ignored show

zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
zstyle ':completion:*:*:*:*:processes' command 'ps -u cjjackson -o pid,user,comm -w -w'
zstyle ':completion:*:*:*:users' ignored-patterns adm amanda apache at avahi avahi-autoipd beaglidx bin cacti canna clamav daemon dbus distcache dnsmasq dovecot fax ftp games gdm gkrellmd gopher hacluster haldaemon halt hsqldb ident junkbust kdm ldap lp mail mailman mailnull man messagebus mldonkey mysql nagios named netdump news nfsnobody nobody nscd ntp nut nx obsrun openvpn operator pcap polkitd postfix postgres privoxy pulse pvm quagga radvd rpc rpcuser rpm rtkit scard shutdown squid sshd statd svn sync tftp usbmux uucp vcsa wwwrun xfs '_*'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*' list-colors 'rs=0' 'di=01;34' 'ln=01;36' 'mh=00' 'pi=40;33' 'so=01;35' 'do=01;35' 'bd=40;33;01' 'cd=40;33;01' 'or=40;31;01' 'mi=00' 'su=37;41' 'sg=30;43' 'ca=00' 'tw=30;42' 'ow=34;42' 'st=37;44' 'ex=01;32' '*.tar=01;31' '*.tgz=01;31' '*.arc=01;31' '*.arj=01;31' '*.taz=01;31' '*.lha=01;31' '*.lz4=01;31' '*.lzh=01;31' '*.lzma=01;31' '*.tlz=01;31' '*.txz=01;31' '*.tzo=01;31' '*.t7z=01;31' '*.zip=01;31' '*.z=01;31' '*.dz=01;31' '*.gz=01;31' '*.lrz=01;31' '*.lz=01;31' '*.lzo=01;31' '*.xz=01;31' '*.zst=01;31' '*.tzst=01;31' '*.bz2=01;31' '*.bz=01;31' '*.tbz=01;31' '*.tbz2=01;31' '*.tz=01;31' '*.deb=01;31' '*.rpm=01;31' '*.jar=01;31' '*.war=01;31' '*.ear=01;31' '*.sar=01;31' '*.rar=01;31' '*.alz=01;31' '*.ace=01;31' '*.zoo=01;31' '*.cpio=01;31' '*.7z=01;31' '*.rz=01;31' '*.cab=01;31' '*.wim=01;31' '*.swm=01;31' '*.dwm=01;31' '*.esd=01;31' '*.avif=01;35' '*.jpg=01;35' '*.jpeg=01;35' '*.mjpg=01;35' '*.mjpeg=01;35' '*.gif=01;35' '*.bmp=01;35' '*.pbm=01;35' '*.pgm=01;35' '*.ppm=01;35' '*.tga=01;35' '*.xbm=01;35' '*.xpm=01;35' '*.tif=01;35' '*.tiff=01;35' '*.png=01;35' '*.svg=01;35' '*.svgz=01;35' '*.mng=01;35' '*.pcx=01;35' '*.mov=01;35' '*.mpg=01;35' '*.mpeg=01;35' '*.m2v=01;35' '*.mkv=01;35' '*.webm=01;35' '*.webp=01;35' '*.ogm=01;35' '*.mp4=01;35' '*.m4v=01;35' '*.mp4v=01;35' '*.vob=01;35' '*.qt=01;35' '*.nuv=01;35' '*.wmv=01;35' '*.asf=01;35' '*.rm=01;35' '*.rmvb=01;35' '*.flc=01;35' '*.avi=01;35' '*.fli=01;35' '*.flv=01;35' '*.gl=01;35' '*.dl=01;35' '*.xcf=01;35' '*.xwd=01;35' '*.yuv=01;35' '*.cgm=01;35' '*.emf=01;35' '*.ogv=01;35' '*.ogx=01;35' '*.aac=00;36' '*.au=00;36' '*.flac=00;36' '*.m4a=00;36' '*.mid=00;36' '*.midi=00;36' '*.mka=00;36' '*.mp3=00;36' '*.mpc=00;36' '*.ogg=00;36' '*.ra=00;36' '*.wav=00;36' '*.oga=00;36' '*.opus=00;36' '*.spx=00;36' '*.xspf=00;36' '*~=00;90' '*#=00;90' '*.bak=00;90' '*.old=00;90' '*.orig=00;90' '*.part=00;90' '*.rej=00;90' '*.swp=00;90' '*.tmp=00;90' '*.dpkg-dist=00;90' '*.dpkg-old=00;90' '*.ucf-dist=00;90' '*.ucf-new=00;90' '*.ucf-old=00;90' '*.rpmnew=00;90' '*.rpmorig=00;90' '*.rpmsave=00;90' ''
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' special-dirs true
zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' squeeze-slashes true

zstyle ':url-quote-magic:*' url-metas '*?[]^(|)~#{}='
zstyle -e :url-quote-magic url-globbers $'zmodload -i zsh/parameter;\n\t reply=( noglob\n\t\t ${(k)galiases[(R)(* |)(noglob|urlglobber|globurl) *]:-}\n\t\t ${(k)aliases[(R)(* |)(noglob|urlglobber|globurl) *]:-} )'
zstyle -e ':url-quote-magic:*' url-seps 'reply=(";&<>${histchars[1]}")'

zstyle :urlglobber url-local-schema ftp file
zstyle :urlglobber url-other-schema http https ftp