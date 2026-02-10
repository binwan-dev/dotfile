# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ys"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias setpxy="export ALL_PROXY=socks5://127.0.0.1:7890"
alias unsetpxy="unset All_PROXY"
alias pxy="proxychains4 "
alias c="clear"

# Git
alias gc="git commit -m "
alias gca="git commit -a -m"
alias gp="git push origin HEAD"
alias gpu="git pull origin"
alias gst="git status"
alias glog="git log --graph --topo-order --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N' --abbrev-commit"
alias gdiff="git diff"
alias gco="git checkout"
alias gb="git branch"
alias gba="git branch -a"
alias gadd="git add"
alias ga="git add -p"
alias gcoall="git checkout -- ."
alias gr="git remote"
alias gre="git reset"

export PATH="$PATH:/Users/binwan/.dotnet/tools:/usr/local/share/dotnet/:/opt/homebrew/bin:"

source $HOME/.cargo/env

export RUST_BACKTRACE=1
export PATH="/usr/local/bin:$HOME/.cargo/bin:$PATH"
export GO111MODULE="on"
export GOPATH="/Users/binwan/Documents/go"
export GOPRIVATE=git.shijizhongyun.com/*
export PATH="/opt/homebrew/opt/git/bin:/Users/binwan/Documents/go/bin:/usr/local/go/bin:/Users/binwan/Documents/shell:/opt/homebrew/bin/:$PATH:/Library/Frameworks/Mono.framework/Versions/Current/bin/"
export GOPROXY=https://goproxy.cn,direct
export DYLD_LIBRARY_PATH=/opt/homebrew/opt/openssl@1.1/lib # It's fixed the dotnet can't using AES-GCM
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup


if [[ "$TERM" == "dumb" ]]
then
  unsetopt zle
  unsetopt prompt_cr
  unsetopt prompt_subst
  unfunction precmd
  unfunction preexec
  PS1='$ '
fi

eval "$(jump shell)"

export NVM_DIR="/Users/binwan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

eval "$(starship init zsh)"

eval $(thefuck --alias)

alias gf=gf

. "$HOME/.local/bin/env"

# Added by Windsurf
export PATH="/Users/binwan/.codeium/windsurf/bin:$PATH"

export OLLAMA_API_BASE="http://127.0.0.1:11434"

eval "$(starship init zsh)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/binwan/.lmstudio/bin"
# End of LM Studio CLI section

export ASPNETCORE_ENVIRONMENT=Development
export BSIDEBUG=true
