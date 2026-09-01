#!/bin/bash

# ~/.bash_aliases
cat << 'EOF' >> ~/.bash_aliases
# aliases
alias aliases="nano ~/.bash_aliases && source ~/.bash_aliases"

# go
go() {
    cd ~/"$1" 2>/dev/null || cd ~
    ls --color=auto
}

# news
news() {
    firefox apnews.com https://www.yahoo.com/news/ https://abcnews.com/
}

# brief
alias brief='~/.venv/bin/python3 ~/Code/brief/brief'
EOF

echo "Success: Write to ~/.bash_aliases"
