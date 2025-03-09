# pacman
alias pac="sudo pacman --color always"
alias pac-unlock="sudo rm -rf /var/lib/pacman/db.lck"
alias aur="paru --color always"

#====>> ls <<====#
alias ll="ls --color=always --group-directories-first -lah"

#====>> cp <<====#
alias cp="cp -i"

#====>> tmux <<====#
alias t="tmux"

#====>> trash <<====#
# alias rm='trash'

#====>> mv <<====#
alias mv='mv -i'

#====>> diff <<====#
alias diff="diff --color=always"

#====>> diff <<====#
alias br="broot -h"

#====>> Grep <<====#
alias grep="grep --color=always"
alias egrep='egrep --color=always'
alias fgrep='fgrep --color=always'

#====>> wget <<====#
alias wget="wget --hsts-file='$XDG_CACHE_HOME/wget-hsts'"

#====>> obs virt camera <<====#
alias obscam="sudo modprobe v4l2loopback video_nr=4 card_label="YOURCAMERANAM""

#====>> mpv <<====#
alias mpv="mpv --loop-file"

#====>> mpv <<====#
alias iv="vimiv"

#====>> cd <<====#
alias cdd="cd ~/Downloads/"
alias cdD="cd ~/Documents/"
alias cdp="cd ~/Pictures/"
alias cdv="cd ~/Videos/"
alias cdm="cd ~/Music/"
alias cds="cd ~/Pictures/Screenshots/"

alias cdc="cd ~/.config/"
alias cdl="cd ~/.local/"
alias cdb="cd ~/.local/bin/"

alias cdg="cd ~/gitthinks/"

alias cdca="cd ~/.config/awesome/"
alias cdck="cd ~/.config/kitty/"
alias cdcf="cd ~/.config/ranger/"
alias cdcl="cd ~/.config/lf/"
alias cdcm="cd ~/.config/mpv/"
alias cdcq="cd ~/.config/qutebrowser/"
alias cdcr="cd ~/.config/rofi/"
alias cdcz="cd ~/.config/zsh/"
alias cdcn="cd ~/.config/nvim/"
alias cdce="cd ~/.emacs.d/"

## curl
# get the weather
alias weather="curl wttr.in"
# fun with rick roll
alias rickroll="curl -s -l https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash"
# get your location
alias get-country="curl ifconfig.co/country"
alias get-city="curl ifconfig.co/city"
# get your ip address
alias get-ip="curl ifconfig.co"
# fun with parrots
alias parrot="curl parrot.live"
# fun with parrots
alias crypto-rate="curl rate.sx"

# fzf
fcd     () { cd "$(find -type d | fzf )" }
frm     () { rm "$(find | fzf -m )" }
fvi     () { $EDITOR "$(find  -type f | fzf)" }
open    () { xdg-open "$(find -type f | fzf)" }
getpath () { find -type f | fzf | sed 's/^..//' | tr -d '\n' | xclip -selection c }

# Timeshift backup
alias timeshift-list="sudo timeshift --list"
alias timeshift-delt="sudo timeshift --delete --snapshot"
alias timeshift-cret="sudo timeshift --create --comments"

# Vim, Nvim
alias v="nvim"

# emacs
alias emacst="/usr/bin/emacs -nw"
alias e="emacsclient -c -a 'emacs'"
alias emacs-kill-deamon="emacsclient -e '(kill-emacs)'"

# switch between bash and zsh
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

## awesome WM
#Restart awesome WM
alias reload="echo 'awesome.restart()' | awesome-client"

# kitty
#Preview images in kitty
alias kcat="kitty +kitten icat"

# easier to read disk
alias df='df -h'            # human-readable sizes
alias free='free -m'        # show sizes in MB

## Ram
# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'
# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

## keys arch linux keys
alias archlinx-fix-keys="sudo pacman-key --init && sudo pacman-key --populate archlinux && sudo pacman-key --refresh-keys"

## ex = EXtractor for all kinds of archives
# usage: ex <file>
ex (){
if [ -f $1 ] ; then case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
esac
else echo "'$1' is not a valid file"
fi }
