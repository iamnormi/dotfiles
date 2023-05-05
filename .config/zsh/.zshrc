export ZSH="$HOME/.config/zsh/oh-my-zsh"
ZSH_THEME="alanpeabody"
plugins=(git)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/i437k/.config/zsh/oh-my-zsh/custom/plugins/zlong_alert.zsh/zlong_alert.zsh



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
alias ftps="python3 -m pyftpdlib"
alias fs="python3 -m http.server"
alias cfx="sudo ntpd -qg ; sudo hwclock --systohc" #To Fix the Clock f**ked by windows 
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
#alias cp="/usr/local/bin/advcp -g"
#alias mv="/usr/local/bin/advmv -g"
alias ff="ffmpeg"
alias ytbdl="youtube-dl -f bestvideo+bestaudio -o '%(title)s.%(ext)s' --external-downloader=aria2c"
alias ytadl="youtube-dl -x -f bestaudio -o '%(title)s.%(ext)s' --external-downloader=aria2c"
alias ytdl="youtube-dl -f best -o '%(title)s.%(ext)s' --external-downloader=aria2c"
alias ytpdl="youtube-dl -f best -o '%(playlist_index)s. %(title)s.%(ext)s' --external-downloader=aria2c" 
alias hst="history 1 -1 | cut -c 8- | sort | uniq | fzf | tr -d '\n' | xclip -sel c"
alias gdlo="gdl -o  --aria-flags '-c --console-log-level=warn --summary-interval=0 --download-result=hide --http-accept-gzip=true --file-allocation=none -x16 -j16 -s16' "
alias sf="xrandr --output HDMI1 --mode 640x480 --output eDP1 --mode 1920x1080 --left-of HDMI1 ; xwallpaper --zoom ~/pix/wall/arch.png"
#export CLASSPATH="/usr/share/java/mariadb-jdbc/mariadb-java-client.jar:/media/i437k/LinuxDisk/root/Tomcat/apache-tomcat-10.0.20/lib/servlet-api.jar:/media/i437k/LinuxDisk/root/Tomcat/apache-tomcat-10.0.20/lib/mysql-connector.jar"

#export LIBVA_DRIVERS_PATH=/usr/lib/dri/iHD_drv_video.so
#export VDPAU_DRIVER=va_gl
#export LIBVA_DRIVER_NAME=iHD
#export QT_QPA_PLATFORMTHEME=qt5ct
PATH="${HOME}/.gdrive-downloader:${PATH}"
