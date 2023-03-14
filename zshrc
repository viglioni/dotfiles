export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="arrow"

plugins=(git)

source $ZSH/oh-my-zsh.sh

function zsh-reload {
		source $HOME/.zshrc 
}


_PATH=/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home/bin:$_PATH
_PATH=~/.local/bin:$_PATH
_PATH=~/lauremacs/scripts:$_PATH
_PATH=/opt/homebrew/lib/ruby/gems/3.1.0/bin:$_PATH
_PATH=$HOME/go/bin:$_PATH
_PATH=/opt/homebrew/opt/libpq/bin:$_PATH
_PATH=$HOME/bin:$_PATH

PATH=$_PATH:$PATH

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


export LAURACORP="$HOME/Library/CloudStorage/GoogleDrive-viglionilaura@gmail.com/My Drive/LauraCorp/"

############################################################################
#                                    NVM                                   #
############################################################################

function use-nvmrc {
		local node_version="$(nvm version)"
		local nvmrc_path="$(nvm_find_nvmrc)"

		if [ -n "$nvmrc_path" ]; then
				local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

 				if [ "$nvmrc_node_version" = "N/A" ]; then
						nvm install
				elif [ "$nvmrc_node_version" != "$node_version" ]; then
						nvm use
				fi
		elif [ "$node_version" != "$(nvm version default)" ]; then
				echo "Reverting to nvm default version"
				nvm use default
		fi
}

add-zsh-hook chpwd use-nvmrc
use-nvmrc

gdrive="~/Library/CloudStorage/GoogleDrive-viglionilaura@gmail.com/My\ Drive/"

############################################################################
############################################################################

# solving "too many open files"
ulimit -n 10240
ulimit -u 2048
gdrive="/Users/lauraviglioni/Library/CloudStorage/GoogleDrive-viglionilaura@gmail.com/My Drive"

[ -f "/Users/lauraviglioni/.ghcup/env" ] && source "/Users/lauraviglioni/.ghcup/env" # ghcup-env
