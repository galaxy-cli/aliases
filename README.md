# bash aliases
## ~/.bash_aliases
```
alias aliases="nano ~/.bash_aliases && source ~/.bash_aliases"
```
`nano` and source `~/.bash_aliases`

## uu
``` 
uu() {
    sudo apt update
    local count=$(apt list --upgradable 2>/dev/null | grep -v "Listing..." | grep -c '/')
    if [ "$count" -gt 0 ]; then
        sudo apt-get dist-upgrade -y -o APT::Get::Always-Include-Phased-Updates=true        
        sudo apt autoremove -y
        sudo apt autoclean
    fi
    flatpak update -y
}
```
Update, upgrade, and remove

## binlink 
```
binlink() {
    for dir in ~/Code/*/ ; do
        name=$(basename "$dir")
        target_bin="$dir$name"
        if [ -x "$target_bin" ]; then
            ln -sf "$target_bin" "$~/.local/bin/$name"
        fi
    done
    echo "Symlinks updated!"
}
```
Symlink to `~/.local/bin`
## go
```
go() {
    if [ $# -eq 0 ]; then
        cd ~
    else
        cd ~/"$1"
    fi
    ls 2>/dev/null
}

```
`cd` and `ls`