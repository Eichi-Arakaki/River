#!/bin/sh

r_swaybg() {
    if pgrep -x "swaybg" > /dev/null
    then
        pkill swaybg
    fi

    swaybg -m fill -i "$1" &
}


r_mako() {
    if pgrep -x "mako" > /dev/null
    then
        pkill mako
    fi

    mako &
}


# redshift
if pgrep redshift > /dev/null
then
    redshift_pid=$(pidof redshift)
    kill $redshift_pid
fi

date=$(date +%H)
if [ ${date:0:1} -eq "0" ]; then
 date=${date:1:2}
fi

case $date in
    "0" | "1" | "2" | "3") redshift -O 4100 &;;
    "4")                   redshift -O 4200 &;;
    "5")                   redshift -O 4300 &;;
    "6")                   redshift -O 4400 &;;
    "7")                   redshift -O 4500 &;;
    "8")                   redshift -O 4600 &;;
    "9" | "10" | "11")     redshift -O 4700 &;;
    "15" | "16" | "17")    redshift -O 4600 &;;
    "18")                  redshift -O 4500 &;;
    "19")                  redshift -O 4400 &;;
    "20")                  redshift -O 4300 &;;
    "21")                  redshift -O 4200 &;;
    "22" | "23")           redshift -O 4100 &;; 
    *);;
esac



r_swaybg ~/Pictures/wallpapers/shifaaz.jpg
r_mako

# Set and exec into the default layout generator, rivertile.
# River will send the process group of the init executable SIGTERM on exit.
riverctl default-layout rivertile
exec rivertile -view-padding 6 -outer-padding 6