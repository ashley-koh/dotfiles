# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/bin:$PATH

# Alias
alias tmux='tmux -u'

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
alias vim="nvim"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ashleykoh/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ashleykoh/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ashleykoh/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ashleykoh/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

ros_dev() {
  # Check if the correct number of arguments were provided
  if (( $# % 2 != 0 )); then
    echo "Usage: ros_dev <container_name1> <project_path1> [<container_name2> <project_path2> ...]"
    return 1
  fi

  while (( $# >= 2 )); do
    # Set environment variables
    ROS_DEV_CONTAINER_NAME=$1
    ROS_PROJECT_PATH=$2
    shift 2

    # Run docker-compose from the correct directory
    cd "/Users/ashleykoh/Documents/Docker/ros2-docker-dev" && docker-compose up -d --build
  done
}

# direnv
eval "$(direnv hook zsh)"

eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"
