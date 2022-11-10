export ZSH="$HOME/.config/zsh/oh-my-zsh"
ZSH_THEME="alanpeabody"
plugins=(git)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

function countdown(){
   date1=$((`date +%s` + $1)); 
   while [ "$date1" -ge `date +%s` ]; do 
     echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
     sleep 0.1
   done
}

function stopwatch(){
  date1=`date +%s`; 
   while true; do 
    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r"; 
    sleep 0.1
   done
}


### PATH
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

###Alias###
alias ftp="python3 -m pyftpdlib"
alias fs="python3 -m http.server"
alias cfx="sudo ntpd -qg ; sudo hwclock --systohc" #To Fix the Clock f**ked by windows 
#alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls="lsd"
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias ref="sudo reflector -c "IN" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist"

#export CLASSPATH="/usr/share/java/mariadb-jdbc/mariadb-java-client.jar:/media/i437k/LinuxDisk/root/Tomcat/apache-tomcat-10.0.20/lib/servlet-api.jar:/media/i437k/LinuxDisk/root/Tomcat/apache-tomcat-10.0.20/lib/mysql-connector.jar"

#export LIBVA_DRIVERS_PATH=/usr/lib/dri/iHD_drv_video.so
#export VDPAU_DRIVER=va_gl
#export LIBVA_DRIVER_NAME=iHD

PATH="${HOME}/.gdrive-downloader:${PATH}"
