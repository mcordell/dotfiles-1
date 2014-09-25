# Dial V for Vim
alias v='vim'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'
alias q='cd ~/qcentrix'
alias aliases='v ~/.dotfiles/zsh/aliases.sh'
alias update_dotfiles='cd ~/.dotfiles && rake dotfiles:update'
alias c='clear'
alias d='cd ~/.dotfiles'
alias u='cd ..'
alias uu='cd ../..'

# Starting a work session
alias web='tmuxinator start web'
alias work='web'

# Joining a work session
alias attach='wemux attach'

# Other Tmux aliases
alias tn='wemux'
alias tk='wemux stop'

# Git Aliases

# Amends all staged changes to last commit.
alias git_amend_commit='git commit -a --amend --no-edit'

# Prints out a list of all the changed files from the last commit.
alias git_changed_files='git diff-tree --no-commit-id --name-only -r $(git log -1 --format="%H")'

# Prints out a count of the amount of changed files.
alias git_changed_files_count='git_changed_files | wc -l'

# Prints the short text of the current branch name.
alias git_current_branch_name='git symbolic-ref HEAD --short'

# Removes a branch. Calls git_remove_branch
alias git_delete_branch='git_remove_branch'

# Removes a file from source control.'
alias git_remove_file='git rm --cached'

# Removes all .rej files.
alias git_remove_rej='find . -name "*.rej" -exec rm -f {} \;'

# Prints out the last commit.
alias git_last_commit='git log -1'

# Shows a diff between the last two commits.
alias git_last_commit_diff='git diff HEAD^ HEAD'

# Prints out the hash of the last commit.
alias git_last_commit_hash='git log -1 --format="%H"'

# Prints the list of deleted files
alias git_show_deleted_files='git log --diff-filter=D --summary | grep delete'

# Undo the last commit. The changes from the last commit will be staged for commit.
alias git_reset_last_commit='git reset --soft HEAD^'

# Unstage everything.
alias git_unstage='git reset HEAD .'

# Shorthand aliases
alias amend='echo "use gca"; git commit --amend'
alias cleanup='git fetch origin --prune'
alias ga='git add'
alias gad='git add --all .'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit'
alias gca='git commit --amend'
alias gcl='git clone'
alias gcm='git commit -m'
alias gco='git checkout'
alias gfo='git fetch origin --prune'
alias gd='git diff'
alias gg='git log'
alias gpush='echo "Use gp!"; git push'
alias gp='git push'
alias gpf='git push -f'
alias gpo='git push origin'
alias gpr='git pull'
alias grc='git rebase --continue'
alias gpom='git push -u origin master'
alias gs='git status'

# All the memes
alias such=git
alias very=git
alias wow='git status'

# Ruby
alias b='bundle exec'
alias be='echo "use b instead of be"; bundle exec'
alias bake='echo "use bk instead of bake"; bundle exec rake'
alias bk='bundle exec rake'
alias bi='bundle install'
alias bo='bundle open'
alias bu='bundle update'
alias r='bundle exec rspec'

# Postgresql
alias pgs='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgt='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop'

# Show and hide files in Finder
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

