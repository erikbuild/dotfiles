export PATH=$HOME/bin:/usr/local/bin:$PATH

# Added by Ruby on Mac to make it easier to switch between native mode and Rosetta
if [[ $(arch) == "i386" ]]; then
  HOMEBREW_PREFIX=/usr/local
  echo "\033[0;31mYour terminal is using Rosetta!\033[0m"
else
  HOMEBREW_PREFIX=/opt/homebrew
fi

eval $("$HOMEBREW_PREFIX/bin/brew" shellenv)
# End of lines added by Ruby on Mac

export EDITOR='code'

alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'

# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gac='git add -A && git commit -m'
alias ge='git-edit-new'export PATH="$HOME/rubyonmac:$PATH"

## Named Directories
hash -d fusion="$HOME/Library/Application Support/Autodesk/Autodesk Fusion 360/API/AddIns"
hash -d positron3d="/volumes/data/Dropbox/Making/Positron3D"

eval "$(nodenv init -)"

alias python='python3'

export PATH="$HOME/rubyonmac:$PATH"

# Add Retro68K bin
export PATH=/Users/erik/Code/Retro68-build/toolchain/bin:$PATH

source "$(brew --prefix)/opt/chruby/share/chruby/chruby.sh"

source "$(brew --prefix)/opt/chruby/share/chruby/auto.sh"

#chruby ruby-3.3.7
#nodenv global 20.18.1

export PATH="$HOME/.local/bin:$PATH"

[ -f "$HOME/.claude/secrets.env" ] && source "$HOME/.claude/secrets.env"
alias claude-switch="$HOME/Code/ClaudeSwitchProvider/switch-provider.sh"

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"

eval "$(starship init zsh)"
