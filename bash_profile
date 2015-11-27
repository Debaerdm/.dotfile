#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ $(tty) == '/dev/tty1' ]] && startx
if [[ -t 0 && $(tty) =~ /dev/tty ]] && ! pgrep -u $USER startx &> /dev/null;then
     echo "Aucune session X11 détectée, voulez vous en lancer une ? [O|n]"
     read -n 1 start_x
     if [[ $start_x == "n" ]];then
         echo "X11 ne sera pas lancé."
     else
 	  startx
     fi
 fi
