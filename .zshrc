PROMPT="%F{white}┌(%f%F{green}$USER@%m%f%F{white})─(%f%F{cyan}%d%f%F{white})%f"$'\n'"%F{white}└╼$ "

export GOROOT=/usr/lib/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:GOROOT/bin:$PATH

export DOTNETTOOLS=$HOME/.dotnet/tools
export PATH=$DOTNETTOOLS:$PATH

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

zstyle ':autocomplete:tab:*' insert-unambiguous yes
zstyle ':autocomplete:tab:*' widget-style menu-select
zstyle ':autocomplete:*' min-input 2
bindkey $key[Up] up-line-or-history
bindkey $key[Down] down-line-or-history

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

findfile ()
{
    find / -type f -name $1 -exec ls -al {} \; 2>/dev/null
}

b64d ()
{
    echo $1 | base64 -d
}

jwt ()
{
    echo $1 | cut -d '.' -f 1 | base64 -d | jq
    echo $1 | cut -d '.' -f 2 | base64 -d | jq
}

addhost ()
{
    sudo bash -c "echo -e '$1\t$2' >> /etc/hosts"
}

extract-urls () 
{
    cat $1 | grep -Po "(?:https|http)://[\w._\-]+/[\w._\-?&%/~:#\[\]!$&'\(\)\*+,;=]+" | sort -u
}
