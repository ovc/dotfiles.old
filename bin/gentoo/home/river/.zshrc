# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="af-magic"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/vim-interaction
#plugins=(git git-flow cp vim-mode vim-interaction tmux tmuxinator)
plugins=(git git-flow cp tmux colored-man common-aliases taskwarrior systemd)

# Plugins config:
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOSTART_ONCE=true
ZSH_TMUX_AUTOCONNECT=false
ZSH_TMUX_AUTOQUIT=false
#ZSH_TMUX_FIXTERM=true

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"
export PATH=$HOME/.dotfiles/bin:$PATH

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
set -o vi

# My aliases
alias prox="ssh -2qTnNf -D 5999 ROvchinnikov@camelot-1-57"

alias c217="xfreerdp --no-nla --ignore-certificate -z -g 1439x848 -d mfc --gdi sw --plugin cliprdr --plugin drdynvc --plugin rdpdr --data scard:scard disk:Disk:/home/ovc/Share -- camelot-2-17 1>/dev/null 2>/dev/null &"

alias c317="xfreerdp --no-nla --ignore-certificate -z -g 1439x848 -d mfc --gdi sw --plugin cliprdr --plugin drdynvc --plugin rdpdr --data scard:scard disk:Disk:/home/ovc/Share -- camelot-3-17 1>/dev/null 2>/dev/null &"

alias rdp="xfreerdp --no-nla --ignore-certificate -z -g 1439x848 -d mfc --gdi sw --plugin cliprdr --plugin drdynvc --plugin rdpdr --data scard:scard disk:Disk:/home/ovc/Share --"

#alias tmux="tmux attach || tmux new"

alias pub="sudo cryptsetup luksOpen /dev/sda2 pub && sudo mount /dev/mapper/pub /pub/"

alias vt="gnome-terminal -x vim"
alias gtvim="gnome-terminal --tab-with-profile=X -t Vim -x vim >&1"

export EDITOR="/usr/local/bin/vim"
