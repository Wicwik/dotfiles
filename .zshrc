# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
plugins=(git)

POWERLEVEL10K_LEFT_PROMPT_ELEMENTS=(anaconda)

source $ZSH/oh-my-zsh.sh

alias cp='cp -i'
alias df='df -h'
alias free='free -m'
alias more=less
alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# connections
alias mthome="ssh -o PubkeyAcceptedKeyTypes=ssh-rsa -o HostKeyAlgorithms=-ssh-rsa admin@10.10.10.1"
alias mtfirma="ssh -o PubkeyAcceptedKeyTypes=ssh-rsa -o HostKeyAlgorithms=-ssh-rsa admin@10.10.10.2"
alias mthore="ssh -o PubkeyAcceptedKeyTypes=ssh-rsa -o HostKeyAlgorithms=-ssh-rsa admin@10.10.10.3"
alias midgard="ssh -o PubkeyAcceptedKeyTypes=ssh-rsa -o HostKeyAlgorithms=-ssh-rsa admin@172.16.1.1"
alias raspi="ssh -o PubkeyAcceptedKeyTypes=ssh-rsa -o HostKeyAlgorithms=-ssh-rsa robert@10.11.11.254"
alias homemachine="ssh robert@10.10.10.4"
alias bvps='ssh belanecvps'
alias rbvps='ssh robertbelanec'
alias bvdc='ssh belanecvdc'

alias osprog="cd ~/School/3_sem/OSPROG/osprog22/"

# compilators
alias cpp17="g++-12 -pedantic -std=c++17 -pthread -Wall -Wextra -Wformat=2 -Wlogical-op -Wmissing-include-dirs -Wredundant-decls -Wsign-conversion -Wstrict-overflow=2 -Wundef -Wnull-dereference -Wuninitialized -Walloca  -Wcast-qual"
alias cpp11="g++-12 -pedantic -std=c++11 -pthread -Wall -Wextra -Wformat=2 -Wlogical-op -Wmissing-include-dirs -Wredundant-decls -Wsign-conversion -Wstrict-overflow=2 -Wundef -Wnull-dereference -Wuninitialized -Walloca  -Wcast-qual"
alias cpp20="g++-12 -pedantic -std=c++20 -pthread -Wall -Wextra -Wformat=2 -Wlogical-op -Wmissing-include-dirs -Wredundant-decls -Wsign-conversion -Wstrict-overflow=2 -Wundef -Wnull-dereference -Wuninitialized -Walloca  -Wcast-qual"
alias mcpp11="mpic++ -pedantic -std c++11 -pthread -Wall -Wextra -Wformat=2 -Wlogical-op -Wmissing-include-dirs -Wredundant-decls -Wsign-conversion -Wstrict-overflow=2 -Wundef -Wnull-dereference -Wuninitialized -Walloca  -Wcast-qual"export GPG_TTY=$(tty)
alias gcc='gcc-12'
alias python310="/opt/homebrew/Cellar/python@3.10/3.10.5/bin/python3"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
