#!/usr/bin/env zsh
#   _________  _   _ ____   ____ 
#  |__  / ___|| | | |  _ \ / ___|
#    / /\___ \| |_| | |_) | |    
# _ / /_ ___) |  _  |  _ <| |___ 
#(_)____|____/|_| |_|_| \_\\____|
#
#   
###############################

ZSH=/usr/share/oh-my-zsh
#screenfetch -c 7,9 && echo
archey3

# Completion
autoload -U bashcompinit
autoload -U incremental-complete-word
autoload -U compinit
bashcompinit
compinit -C
zmodload zsh/complist

ZSH_THEME="bullet-train"
setopt printeightbit
umask 022
#compton -cb


#safe_term=${TERM//[^[:alnum:]]/?}

# Colors
#if [[ -x `which dircolors` ]]; then
#    if [[ -f ~/.dir_colors ]]; then
#        eval $(dircolors -b ~/.dir_colors)
#    elif  [[ -f /etc/dir_colors ]]; then
#        eval $(dircolors -b /etc/dir_colors)
#    else
#        eval $(dircolors -b)
#    fi
#else
    
LS_COLORS='no=00:fi=00:di=00;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:';
#    export LS_COLORS
#fi
export LS_COLORS=$LS_COLORS


# better ls ;)
function ll()
{ ls -l "$@"| egrep "^d" ; ls -lXB "$@" 2>&-| egrep -v "^d|total "; }

export GREP_COLOR=31

# Alias #
alias grep='egrep --color=auto'
alias mkdir='mkdir -p'
alias ..='cd ..'
alias svi="sudo vim"
alias rmmod="sudo rmmod"
alias cpr="cp -R"
alias date="date +%c"
alias less="vimpager"
alias more="vimpager"

# Pacman
alias pac="sudo pacman"
alias pacS="sudo pacman -S"
alias pacR="sudo pacman -R"
alias pacRs="sudo pacman -Rs"
alias pacSyu="sudo pacman -Syyu"
alias pacSs="pacman -Ss"
alias pacSg="pacman -Sg"
alias pacQs="pacman -Qs"
alias pacSi="pacman -Si"
alias pacQi="pacman -Qi"
alias pacQl="pacman -Ql"
alias pacQo="sudo pacman -Qo" 
alias pacQtd="sudo pacman -Qtd"
alias pacScc="sudo pacman -Scc" 
alias pacU="sudo pacman -U"
alias pacaurS="pacaur -S"

# The 'ls' family (this assumes you use the GNU ls)
alias la='ls -Al'               # show hidden files
alias ls='ls -hF --color'    # add colors for filetype recognition
alias lx='ls -lXB'              # sort by extension
alias lk='ls -lSr'              # sort by size
alias lc='ls -lcr'        # sort by change time  
alias lu='ls -lur'        # sort by access time   
alias lr='ls -lR'               # recursive ls
alias lt='ls -ltr'              # sort by date
alias lm='ls -al |more'         # pipe through 'more'

alias networkmanger='sudo exec NetworkManager | nmtui' 
alias wifi="pls wifi-menu" 
alias rm="rm -i" 
alias rmf="rm -rfi" 
alias vi="vim" 
alias pdf="chromium 2>/dev/null" 
alias cls="clear ; ls" 
alias moodlepls="chromium --proxy-auto-detect http://moodle.univ-lille1.fr/ 2>/dev/null" 
alias yes="echo non" 
alias pd="echo 'toi meme'" 
alias lille1="export http_proxy=http://proxy.univ-lille1.fr:3128; 
             export https_proxy=https://proxy.univ-lille1.fr:3128; 
             echo 'ok'"
alias stats="stat" 
alias wallpaper="~/scripts/wallpaper.sh" 
alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.    zip" 
alias pls="sudo" 
alias batsaver='sudo powertop --auto-tune 2>/dev/null' 
alias steamSilent='/usr/bin/steam -silent %U' 
alias minecraft='java -jar $HOME/Game/Minecraft/Minecraft.jar' 
export EDITOR=vim 
alias http="export http_proxy=proxy.univ-lille1.fr:3128 ; export https_proxy=$http_proxy"
alias netctl_lille1="netctl start /etc/netctl/wlp3s0b1-LILLE1.wifi-menu" 
alias emacs="vim"

			 

# Paths
export PATH=$PATH:/home/cocky/bin/:/sbin/:/usr/sbin/:/usr/local/bin/
export CLASSPATH=.:$HOME/Postgresql/tomcat8light/tomcat8/lib/postgresql-9.3-1102.jdbc41.jar:$HOME/Postgresql/tomcat8light/tomcat8/lib/servlet-api.jar

#extract
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
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
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd/mm/yyyy"

plugins=(git)

# Pager
export PAGER=/usr/bin/vimpager
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
source $ZSH/oh-my-zsh.sh
