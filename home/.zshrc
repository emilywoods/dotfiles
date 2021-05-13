export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="muse"

plugins=(git kubectl z)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

# Aliases
if [ -f ~/.alias ]; then
  . ~/.alias
fi

# Homeshick for dotfile management
source $HOME/.homesick/repos/homeshick/homeshick.sh

# Use FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Display 
prompt_context () {}

# Display K8s context: https://github.com/jonmosco/kube-ps1
source ~/.kube-ps1
PROMPT='$(kube_ps1)'$PROMPT
KUBE_PS1_CTX_COLOR=yellow

