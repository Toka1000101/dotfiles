# 
# my configuration of ~/.bashrc TM
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# for git to show current branch
git_current_branch() {
	if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
		local branch_name
		branch_name=$(git branch --show-current 2>/dev/null)

		if [ -n "$branch_name" ]; then
			echo "($branch_name)"
		fi
	fi
}

# prompt
Green='\[\e[1;32m\]'
Color_Off='\[\033[0m\]'
PS1="${Green}[\u@\h \W]\$(git_current_branch)${Color_Off}\$"

# editor options
export EDITOR="nvim"
export VISUAL="nvim"
export SUDO_EDITOR="nvim"
