# Aliases in this file are bash and zsh compatible

# Don't change. The following determines where YADR is installed.
yadr=$HOME/.yadr

# YADR support
alias yav='yadr vim-add-plugin'
alias ydv='yadr vim-delete-plugin'
alias ylv='yadr vim-list-plugin'
alias yup='yadr update-plugins'
alias yip='yadr init-plugins'

# TODO
alias td='/usr/local/bin/todo.sh'
alias tda='/usr/local/bin/todo.sh add'


# PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'

# Moving around
alias cdb='cd -'
alias cdd='cd ~/Developer'
alias cdw="cd ~/Developer/Wip"

# Show human friendly numbers and colors
alias df='df -h'
alias ll='ls -alGh'
alias ls='ls -Gh'
# alias du='du -h -d 2'

# show me files matching "ls grep"
alias lsg='ll | grep'

# Alias Editing
alias ae='vim $yadr/zsh/aliases.zsh' #alias edit
alias ar='source $yadr/zsh/aliases.zsh'  #alias reload

# vim using
mvim --version > /dev/null 2>&1
MACVIM_INSTALLED=$?
if [ $MACVIM_INSTALLED -eq 0 ]; then
  alias vim="mvim -v"
fi

# vimrc editing
alias ve='vim ~/.vimrc'

# zsh profile editing
alias ze='vim ~/.zshrc'
alias zr='source ~/.zshrc'

# Git Aliases
alias gs='git status'
alias gstsh='git stash'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
alias gbd='git b -D -w'
alias gdc='git diff --cached -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsh='git push'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'
alias gum='git checkout master && git fetch && git pull origin master'
alias gfar='git fetch origin && git rebase -i origin/master'
alias gbr="git for-each-ref --count=15 --sort=-committerdate refs/heads/ --format='%(objectname:short) %(refname:short)'"

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

# Ruby
alias tfdl='tail -f log/development.log'
alias tftl='tail -f log/test.log'

alias ka9='killall -9'
alias k9='kill -9'

# Gem install
alias sgi='sudo gem install --no-ri --no-rdoc'

# Forward port 80 to 3000
alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'

alias rdm='rake db:migrate'
alias rdmr='rake db:migrate:redo'

# Zeus
alias zs='zeus server'
alias zc='zeus console'

# Rspec
alias srgm='spring rails g migration'
alias srdm='spring rake db:migrate'
alias srdt='spring rake db:migrate'
alias srdmt='spring rake db:migrate db:test:prepare'

# Cucumber
alias cuke='bin/rake pace:reset_test_accounts && bin/bundle exec cucumber -p headless'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Redo last command with sudo
alias redo='sudo \!-1'

# Bundler
alias be='bundle exec'

# Node Webkit
alias nw="open -n -a node-webkit"

# Gobbler Specific
alias cdg="cd ~/src/mam/server/mam"
alias cdm="cd ~/src/gob_marketplace"
alias sshu="ssh 'ubuntu@gobbler-dev.com'"
alias railss="bin/rails s"
alias railsc="bin/rails c"
alias gspot="sudo ~/gob_small_spawn"
alias stopPace='launchctl unload /usr/local/opt/gob_pace_server/homebrew.mxcl.gob_pace_server.plist'
alias startPace='launchctl load /usr/local/opt/gob_pace_server/homebrew.mxcl.gob_pace_server.plist'
alias mktStop='launchctl unload /usr/local/opt/gob_marketplace/homebrew.mxcl.gob_marketplace.plist'
alias mamStop='launchctl unload /usr/local/opt/gob_mam/homebrew.mxcl.gob_mam.plist'


# Misc
alias scratchme="rm -rf ./scratch && mkdir scratch && cd scratch"
alias ic="ruby ~/Developer/interviewcake/bin/problem_template.rb"

#  Find and kill all running rails processes
alias railsk="ps aux  | grep [b]in/rails | awk '{print \$2}' | xargs kill -9"

