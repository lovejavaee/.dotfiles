# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr

# For SDKMAN
# source ~/.sdkman/bin/sdkman-init.sh
alias a='ag -f --hidden'
alias an='antigen'
alias as='apt search'
alias ash='apt show'
alias ai='sudo apt install -y'
alias al='alias'
alias b='brew'
alias bs='b search'
alias bi='b install -y'
alias bin='b info'
alias ds='du -sh'
alias dus='du -sh'
alias p='pass'
alias pgp='p git push'
alias pgpl='p git pull'
alias fd='\find . -type d -name'
alias ff='\find . -type f -name'
alias find='/usr/bin/find . -not -path "*/.git*"  -not -path "*/target*" -not -path "*/.idea/*" -not -path "*/.mvn/*"'
alias f='find'
alias e='emacs'
alias o='explorer.exe'
alias oi='o pom.xml'
alias c='cf'
alias j='z'
alias af='alias | a'
alias m='man'
alias h='http'
alias l='ls -lAFh --color=auto'
alias ld='l -d'
alias le='less'
alias lo='localhost'
alias s='google'
alias s.='source'
alias gs='git status'
alias gst='git standup'
alias gcd='git checkout dev'
alias gog='ssh gcp'
alias gist='gist 2>/dev/null'
alias gist-paste='gist-paste 2>/dev/null'
alias gip='gist-paste'
alias wcl='wc -l'
alias v='vi'
alias newman='/home/jeff/tmp/node-v8.11.4-linux-x64/bin/newman'
#alias clip='clip.exe'
#alias xclip='clip.exe'

# Export for Windows Subsystem for Linux
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
# ignore DLL...
zstyle ':completion:*:complete:-command-:*:*' ignored-patterns '*.dll|*.exe|*.so|*.pyd|*.NLS|*xml|*.old|*.mof|*.ini|*.h|*.DLL|*.msc|*.rc|*.reg'

# Export
export EDITOR='/usr/bin/vim'

# PATH
# export PATH='/home/jeff/tmp/node-v8.11.4-linux-x64/bin/newman:$PATH'

# For bindKey
bindkey ','  autosuggest-accept
bindkey '^j' autosuggest-execute
bindkey '^[d' autosuggest-clear
bindkey "^B" backward-char
bindkey "^F" forward-char 

# For jira 
# eval "$(jira --completion-script-zsh)"

# For vbox(virtualBox CentOS7)
alias vbox-centos7='vbox startvm CentOS7 --type headless'
#VBoxManage modifyvm "CentOS7_mini" --natpf1 "guestssh,tcp,,2222,,22"

# Tell zsh not to nice background processes
unsetopt BG_NICE


# For proxy witch
function proxy_on() {
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    export http_proxy="http://127.0.0.1:1081"
    export https_proxy=$http_proxy
    export socket_proxy="socks5://127.0.0.1:1081"
    echo -e "Proxy Open!"
}

function proxy_off(){
    unset http_proxy
    unset https_proxy
    unset socket_proxy
    echo -e "Proxy Closed!"
}

function proxy_show(){
    echo $http_proxy
    echo $https_proxy
    echo $socket_proxy
}
