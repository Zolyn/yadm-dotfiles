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

# Fast-syntax-highlighting & autosuggestions
zi wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions

zi for \
    OMZL::history.zsh \
    OMZL::key-bindings.zsh \
    OMZP::last-working-dir

zi wait lucid for \
    OMZL::git.zsh \
    OMZP::command-not-found \
    OMZP::cp \
    OMZP::extract \
    OMZP::git \
    OMZP::hitokoto \
    OMZP::rust \
    OMZP::safe-paste \
    OMZP::sudo \
    OMZP::web-search \
    SukkaW/zsh-proxy \
    supercrabtree/k \
    joshskidmore/zsh-fzf-history-search \
    Aloxaf/fzf-tab

alias cpuinfo='sudo cpupower -c all frequency-info'
alias cpuperf='sudo cpupower -c all frequency-set -g performance'
alias cpusave='sudo cpupower -c all frequency-set -g powersave'
alias vwp='nohup bash ~/MyFiles/projects/i3-video-wallpaper/setup.sh -p ~/视频/光_对立.mp4 -a -n -w -b -g 32x32 > ~/log/vwp.out &'
# alias clash='nohup clash > ~/log/clash.out &'

alias ra='ranger'
alias l='exa'

# yadm
alias yst="yadm status"
alias ya="yadm add"
alias ycmsg="yadm commit -m"
alias ypush="yadm push"

# suspend
alias usl="systemctl suspend"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh

# cargo
export PATH=$PATH:/home/zorin/.cargo/bin

source /opt/miniconda/etc/profile.d/conda.sh
# conda activate py39
