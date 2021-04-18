# If not running interactively, don't do anything
[[ $- != *i* ]] && return

fpath=($ZDOTDIR/plugins $fpath)

# Enable colors:
autoload -U colors && colors

# Navigation:
setopt AUTO_CD			# Go to folder path without using cd.
setopt EXTENDED_GLOB		# Use extended globbing syntax.
setopt AUTO_PUSHD		# Push the old directory onto the stack on cd.
setopt PUSHD_IGNORE_DUPS	# Do not store duplicates in the stack.
setopt PUSHD_SILENT		# Do not print the directory stack after pushd or popd

# History:
setopt SHARE_HISTORY		# Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST	# Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS		# Do not record an event that was just recorded.
setopt HIST_IGNORE_ALL_DUPS	# Delete an old record even if a new event is duplicate.
setopt HIST_FIND_NO_DUPS	# Do not display a previously found event.
setopt HIST_IGNORE_SPACE	# Do not record an event starting with space.
setopt HIST_VERIFY		# Do not execute inmediately upon history expansion.

# PROMPT
fpath=($ZDOTDIR/prompt/ $fpath)
autoload -Uz pure.plugin.zsh; pure.plugin.zsh

# Load aliases and shortcuts if existent.
source $ZDOTDIR/aliases/aliasrc

# Basic auto/tab complete:
autoload -Uz compinit; compinit -i
_comp_options+=(globdots)
source $ZDOTDIR/plugins/completion.zsh

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different vi modes.
autoload -Uz cursor_mode; cursor_mode

# Use vim keys in tab complete menu:
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
# Fix backspace bug when switching modes
bindkey "^?" backward-delete-char

# Edit current command line with $EDITOR (vi-mode, then v)
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Syntax highlighting plugin:
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# FZF:
source /usr/share/fzf/key-bindings.zsh
