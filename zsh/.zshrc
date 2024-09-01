export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

HYPHEN_INSENSITIVE="true"

# ENABLE_CORRECTION="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
    git
    sudo
    zsh-autosuggestions
    zsh-syntax-highlighting
    you-should-use
    zsh-vi-mode
)

source $ZSH/oh-my-zsh.sh

export DB_USER=awakair
export DB_PASSWORD=root

export EDITOR=nvim

export GOPATH="$HOME/go"

export PATH="$HOME/.dotnet/tools:/opt/homebrew/opt/postgresql@15/bin:$HOME/.cargo/bin:$HOME/go/bin:/opt/homebrew/opt/llvm/bin:$PATH"

# arc
if [ ! -d ~/arcadia/junk/awakair ]; then
    arc mount ~/arcadia
fi
source ~/arcadia/junk/awakair/aliases 

# git
alias gc="git clone"

# python
alias python="python3"
alias p="python3"
alias pip="pip3"

# cpp
alias c="clang++ --std=c++20 -Wpedantic -Wall -Wextra"
alias fc="clang++ --std=c++20 -Wpedantic -Wall -Wextra main.cpp"
alias fce="clang++ --std=c++20 -Wpedantic -Wall -Wextra main.cpp && ./a.out"
alias fcei="clang++ --std=c++20 -Wpedantic -Wall -Wextra main.cpp && ./a.out < input.txt"
alias cpplint="python3 /Users/awakair/Library/Python/3.9/lib/python/site-packages/cpplint.py"
alias cm="cmake .. -DCMAKE_EXPORT_COMPILE_COMMANDS=1"
alias cb="cmake --build ."
alias cbt="cmake --build . --target"

# file managment
alias tree="eza -l -T --git --hyperlink"
alias l="eza --all -l -G --git --hyperlink --header --git-repos --group-directories-first"
alias ls="eza --hyperlink --group-directories-first"
alias doc="cd ~/Documents"
alias desk="cd ~/Desktop"
alias dow="cd ~/Downloads"
alias proj="cd ~/Desktop/Projects"
alias tmp="cd /tmp"
alias e=${EDITOR}
# alias o=". ~/o.sh"
# alias a=". ~/a.sh"
# alias rm="rip"

# process managment
alias t=btop

# thefuck; scc; bat; exiftool; fzf; dua-cli
# eval "$(zoxide init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
