set fish_greeting ""

set -gx TERM xterm-256color

# Theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# Aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS (jika diperlukan)
# set -gx PATH node_modules/.bin $PATH

# Go (jika diperlukan)
# set -g GOPATH $HOME/go
# set -gx PATH $GOPATH/bin $PATH

function fish_user_key_bindings
  # fzf
  bind \cf fzf_change_directory

  # vim-like
  bind \cl forward-char

  # prevent iterm2 from closing when typing Ctrl-D (EOF)
  bind \cd delete-char
end

# Contoh fungsi untuk melakukan operasi khusus
function my_custom_function
    # Isi fungsi di sini
    echo "Hello from my_custom_function!"
end

# Fungsi untuk menjalankan XAMPP
function xampp_run
    echo "Starting XAMPP..."
    sudo service httpd start
    sudo service mariadb start
end

# Fungsi untuk melihat status XAMPP
function xampp_status
    echo "Showing XAMPP status..."
    sudo systemctl status httpd.service
    sudo systemctl status mariadb.service
end

# Fungsi untuk menghentikan XAMPP
function xampp_stop
    echo "Stopping XAMPP..."
    sudo service httpd stop
    sudo service mariadb stop
end

# Fzf
set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
set -g FZF_LEGACY_KEYBINDINGS 0
set -g FZF_DEFAULT_OPTS "--height 40% --layout=reverse --border --preview-window=right:60% --preview 'bat --style=numbers --color=always --line-range :500 {}'"
set -g FZF_CTRL_T_COMMAND "fd --type f --hidden --follow --exclude .git --exclude node_modules --exclude .cache"
set -g FZF_CTRL_T_OPTS "--preview 'bat --style=numbers --color=always --line-range :500 {}'"
set -g FZF_ALT_C_COMMAND "fd --type d --hidden --follow --exclude .git --exclude node_modules --exclude .cache"
set -g FZF_ALT_C_OPTS "--preview 'tree -C {} | head -200'"
set -g FZF_DEFAULT_COMMAND "fd --type f --hidden --follow --exclude .git --exclude node_modules --exclude .cache"


function fish_user_key_bindings
  # fzf
  bind \cf fzf_change_directory

  # vim-like
  bind \cl forward-char

  # prevent iterm2 from closing when typing Ctrl-D (EOF)
  bind \cd delete-char
end

# fzf plugin
fzf_configure_bindings --directory=\co
fzf_configure_bindings --directory=\co
fzf_configure_bindings --file=\cf
fzf_configure_bindings --git=\cg
fzf_configure_bindings --history=\ch
fzf_configure_bindings --jump=\cj
fzf_configure_bindings --process=\ck
fzf_configure_bindings --search=\cs
fzf_configure_bindings --shell=\c'

function _fzf_change_directory
  fzf | perl -pe 's/([ ()])/\\\\$1/g'|read foo
  if [ $foo ]
    builtin cd $foo
    commandline -r ''
    commandline -f repaint
  else
    commandline ''
  end
end

function fzf_change_directory
  begin
    echo $HOME/.config
    find $(ghq root) -maxdepth 4 -type d -name .git | sed 's/\/\.git//'
    ls -ad */|perl -pe "s#^#$PWD/#"|grep -v \.git
    ls -ad $HOME/Developments/*/* |grep -v \.git
  end | sed -e 's/\/$//' | awk '!a[$0]++' | _fzf_change_directory $argv
end
