setopt auto_cd
### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Zplugin annexes
zinit light-mode for \
    zdharma-continuum/zinit-annex-readurl \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-submods \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-rust

# Load starship theme
zi ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zi light starship/starship

ZINIT[COMPINIT_OPTS]=-C;zicompinit

# OMZ Libs required on startup
zi for \
    OMZL::history.zsh \
    OMZL::key-bindings.zsh \
    OMZL::functions.zsh \
    OMZP::last-working-dir

# Fast-syntax-highlighting & autosuggestions
zi wait lucid for \
    zdharma-continuum/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions

# fzf theme
export FZF_DEFAULT_OPTS='--color=spinner:#F8BD96,hl:#F28FAD --color=fg:#D9E0EE,header:#F28FAD,info:#DDB6F2,pointer:#F8BD96 --color=marker:#F8BD96,fg+:#F2CDCD,prompt:#DDB6F2,hl+:#F28FAD'

zi wait lucid for \
    OMZL::git.zsh \
    OMZP::vscode \
    OMZP::rust \
    OMZP::fnm \
    OMZP::frontend-search \
    OMZP::command-not-found \
    OMZP::cp \
    OMZP::extract \
    OMZP::git \
    OMZP::hitokoto \
    OMZP::safe-paste \
    OMZP::sudo \
    OMZP::web-search \
    supercrabtree/k \
    joshskidmore/zsh-fzf-history-search \
    Aloxaf/fzf-tab \
    wfxr/forgit \
    atload"zicdreplay" \
    mellbourn/zabb

# SukkaW/zsh-proxy

bt_on() {
  bluetoothctl power on
}

bt_off() {
  bluetoothctl power off
}

alias cpuinfo='sudo cpupower -c all frequency-info'
alias cpuperf='sudo cpupower -c all frequency-set -g performance'
alias cpusave='sudo cpupower -c all frequency-set -g powersave'
# alias vwp='nohup bash ~/MyFiles/projects/i3-video-wallpaper/setup.sh -p ~/视频/光_对立.mp4 -a -n -w -b -g 32x32 > ~/log/vwp.out &'
alias k="k -h"
# alias clash='nohup clash > ~/log/clash.out &'

alias ra='ranger'
alias ls='exa'
alias l='exa'

alias code='code --force-device-scale-factor=1.4'
alias nl='na link'

# yadm
alias yst="yadm status"
alias ya="yadm add"
alias yd="yadm diff"
alias ycmsg="yadm commit -m"
alias ypush="yadm push"
alias z="cd"

# suspend
alias usl="systemctl suspend"

# cargo
export PATH=$PATH:/home/zorin/.cargo/bin:/home/zorin/.local/bin

# source /opt/miniconda/etc/profile.d/conda.sh
# conda activate py39
### End of Zinit's installer chunk

# pnpm
export PNPM_HOME="/home/zorin/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# fnm
export PATH=/home/zorin/.fnm:$PATH
eval "$(fnm env --use-on-cd)"

# howdy
export OPENCV_LOG_LEVEL=0
export OPENCV_VIDEOIO_PRIORITY_INTEL_MFX=0

# zoxide
eval "$(zoxide init zsh --hook pwd --cmd cd)"

# npx_bin_helper
#eval "$(npx_bin_helper setup -s zsh)"
