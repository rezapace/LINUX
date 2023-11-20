if status is-interactive
    # Commands to run in interactive sessions can go here
end

# custom reza pace
alias g='cd /home/r/github'

# alias
alias profile='code ~/.config/fish/config.fish'
alias j='z'
alias cp='cp -i'
alias mv='mv -i'
alias rm='trash -v'
alias mkdir='mkdir -p'
alias ps='ps auxf'
alias ping='ping -c 10'
alias less='less -R'
alias c='clear'
alias apt-get='sudo apt-get'
alias multitail='multitail --no-repeat -c'
alias freshclam='sudo freshclam'
alias vi='nvim'
alias svi='sudo vi'
alias vis='nvim "+set si"'
alias home='cd ~'

# cd into the old directory
alias bd='cd "$OLDPWD"'

# Remove a directory and all files
alias rmd='/bin/rm  --recursive --force --verbose '

# Alias's for multiple directory listing commands
alias la='ls -Alh' # show hidden files
alias ls='ls -aFh --color=always' # add colors and file type extensions
alias lx='ls -lXBh' # sort by extension
alias lk='ls -lSrh' # sort by size
alias lc='ls -lcrh' # sort by change time
alias lu='ls -lurh' # sort by access time
alias lr='ls -lRh' # recursive ls
alias lt='ls -ltrh' # sort by date
alias lm='ls -alh |more' # pipe through 'more'
alias lw='ls -xAh' # wide listing format
alias ll='exa --header --long' # long listing format
alias labc='ls -lap' #alphabetical sort
alias lf="ls -l | egrep -v '^d'" # files only
alias ldir="ls -l | egrep '^d'" # directories only

# alias chmod commands
alias mx='chmod a+x'
alias 000='chmod -R 000'
alias 644='chmod -R 644'
alias 666='chmod -R 666'
alias 755='chmod -R 755'
alias 777='chmod -R 777'

# Search command line history
alias h="history | grep "

# Search running processes
alias p="ps aux | grep "
alias topcpu="/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"

# Search files in the current folder
alias f="find . | grep "

# To see if a command is aliased, a file, or a built-in command
alias checkcommand="type -t"

# Show open ports
alias openports='netstat -nape --inet'

# Alias's for safe and forced reboots
alias rebootsafe='sudo shutdown -r now'
alias rebootforce='sudo shutdown -r -n now'

# SHA1
alias sha1='openssl sha1'
# KITTY - alias to be able to use kitty features when connecting to remote servers(e.g use tmux on remote server)

alias kssh="kitty +kitten ssh"

# melist file setelah cd
function cd -d "Change directory and list contents"
    if test -n "$argv"
        builtin cd $argv; and exa --header --long
    else
        builtin cd ~; and exa --header --long
    end
end

# membuatfile 
function mkdirg -d "Create directory and change into it"
    mkdir -p $argv[1]
    cd $argv[1]
end

# GitHub Titus Additions
function gcom -d "Add all changes and commit with message"
    git add .
    git commit -m $argv[1]
end

function gup -d "Add all changes, commit and push with message"
    git add .
    git commit -m $argv[1]
    git push
end

function xampprun -d "Start XAMPP"
    sudo service httpd start
    sudo service mariadb start
end

function xamppstat -d "Show XAMPP status"
    sudo systemctl status httpd.service
    sudo systemctl status mariadb.service
end

function xamppstop -d "Stop XAMPP"
    sudo service httpd stop
    sudo service mariadb stop
end

function htdoc -d "Change directory to /var/www/html"
    cd /var/www/html/
end

# Use Peco to search command history with CTRL+h
function fish_user_key_bindings
    bind \cr 'history | peco'
    bind \cf 'ls | peco'
end

function vs
    set -l argument $argv[1]
    j $argument
    code .
end

function e
    xdg-open .
end