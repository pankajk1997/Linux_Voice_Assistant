#!/bin/bash
#
sensible-browser 'https://voicenotebook.com/?autostart=1&pagelang=en-US&chkinteg=1&chkbufer=1&vid=1' &
CLIP_FILE=clipfile.txt;
echo "Voice Assistance Started -Panky" > $CLIP_FILE;
echo 'Voice Assistance Started -Panky' | xclip -selection clipboard;
prevclip="Voice Assistance Started -Panky";
COUNTER_FILE=counter.txt;
echo 2 > $COUNTER_FILE;

while /bin/true;
do

x="";
wd="";
echo "" > $CLIP_FILE;

origclip=$(xclip -selection clipboard -o);
origclip=${origclip,,}

if [[ $origclip != $prevclip ]]; then
for wd in $origclip; do

echo 0 > $COUNTER_FILE;
clipboard=$x$wd;

# File Management Commands 
if [[ "$clipboard" == *open*document* ]];
then
echo 1 > $COUNTER_FILE;
xdg-open ~/Documents;
clipboard=${clipboard/*document/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *document*open* ]];
then
echo 1 > $COUNTER_FILE;
xdg-open ~/Documents;
clipboard=${clipboard/*open/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *open*download* ]];
then
echo 1 > $COUNTER_FILE;
xdg-open ~/Downloads;
clipboard=${clipboard/*download/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *download*open* ]];
then
echo 1 > $COUNTER_FILE;
xdg-open ~/Downloads;
clipboard=${clipboard/*open/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *open*picture* ]];
then
echo 1 > $COUNTER_FILE;
xdg-open ~/Pictures;
clipboard=${clipboard/*picture/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *picture*open* ]];
then
echo 1 > $COUNTER_FILE;
xdg-open ~/Pictures;
clipboard=${clipboard/*open/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *open*home* ]];
then
echo 1 > $COUNTER_FILE;
xdg-open ~/;
clipboard=${clipboard/*home/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *home*open* ]];
then
echo 1 > $COUNTER_FILE;
xdg-open ~/;
clipboard=${clipboard/*open/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *open*root* ]];
then
echo 1 > $COUNTER_FILE;
xdg-open /;
clipboard=${clipboard/*root/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *root*open* ]];
then
echo 1 > $COUNTER_FILE;
xdg-open /;
clipboard=${clipboard/*open/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *open*video* ]];
then
echo 1 > $COUNTER_FILE;
xdg-open ~/Videos;
clipboard=${clipboard/*video/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *video*open* ]];
then
echo 1 > $COUNTER_FILE;
xdg-open ~/Videos;
clipboard=${clipboard/*open/};
echo $clipboard > $CLIP_FILE;
fi &
# Run Commands & Hotkeys
if [[ "$clipboard" == *open*monitor* ]];
then
echo 1 > $COUNTER_FILE;
/usr/bin/gnome-system-monitor;
clipboard=${clipboard/*monitor/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *monitor*open* ]];
then
echo 1 > $COUNTER_FILE;
/usr/bin/gnome-system-monitor;
clipboard=${clipboard/*open/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *task*manager* ]];
then
echo 1 > $COUNTER_FILE;
/usr/bin/gnome-system-monitor;
clipboard=${clipboard/*manager/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *open*browser* ]];
then
echo 1 > $COUNTER_FILE;
sensible-browser;
clipboard=${clipboard/*browser/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *browser*open* ]];
then
echo 1 > $COUNTER_FILE;
sensible-browser;
clipboard=${clipboard/*open/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *text*editor* ]];
then
echo 1 > $COUNTER_FILE;
subl;
if [ $? != 0 ];
then
gedit;
if [ $? != 0 ];
then
leafpad;
fi &
fi &
clipboard=${clipboard/*editor/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *open*sublime* ]];
then
echo 1 > $COUNTER_FILE;
subl;
clipboard=${clipboard/*sublime/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *sublime*open* ]];
then
echo 1 > $COUNTER_FILE;
subl;
clipboard=${clipboard/*open/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *open*terminal* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+alt+t;
clipboard=${clipboard/*terminal/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *terminal*open* ]]||[[ "$clipboard" == *shell*open* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+alt+t;
clipboard=${clipboard/*open/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *open*shell* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+alt+t;
clipboard=${clipboard/*shell/};
echo $clipboard > $CLIP_FILE;
fi &
# Window Management Commands
if [[ "$clipboard" == *refresh* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key F5;
clipboard=${clipboard/*refresh/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *select*all* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+a;
clipboard=${clipboard/*all/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *resiz* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key alt+F8;
clipboard=${clipboard/*resiz/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *move*left* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key super+Left;
clipboard=${clipboard/*left/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *move*right* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key super+Right;
clipboard=${clipboard/*right/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *left*move* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key super+Left;
clipboard=${clipboard/*move/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *right*move* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key super+Right;
clipboard=${clipboard/*move/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *move*window* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key alt+F7;
clipboard=${clipboard/*window/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *window*move* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key alt+F8;
clipboard=${clipboard/*move/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *go*back* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key alt+Left;
clipboard=${clipboard/*back/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *go*forward* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key alt+Right;
clipboard=${clipboard/*forward/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *page*up* ]]||[[ "$clipboard" == *scroll*up* ]]||[[ "$clipboard" == *go*up* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key Page_Up;
clipboard=${clipboard/*up/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *page*down* ]]||[[ "$clipboard" == *scroll*down* ]]||[[ "$clipboard" == *go*down* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key Page_Down;
clipboard=${clipboard/*down/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *minimi* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key super+Down;
clipboard=${clipboard/*minimi/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *maximi* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key super+Up;
clipboard=${clipboard/*maximi/};
echo $clipboard > $CLIP_FILE;
fi &
# Miscellaneous
if [[ "$clipboard" == *pan*in* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+alt+Up;
clipboard=${clipboard/*in/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *pan*out* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+alt+Down;
clipboard=${clipboard/*out/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *zoom*in* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+plus;
clipboard=${clipboard/*in/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *zoom*out* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+minus;
clipboard=${clipboard/*out/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *zoom*default* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+0;
clipboard=${clipboard/*default/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *decorat*cursor* ]]||[[ "$clipboard" == *highlight*cursor* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key super+k;
clipboard=${clipboard/*cursor/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *cursor*decorat* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key super+k;
clipboard=${clipboard/*decorat/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *cursor*highlight* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key super+k;
clipboard=${clipboard/*highlight/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *increas*volume* ]]||[[ "$clipboard" == *enhanc*volume* ]];
then
echo 1 > $COUNTER_FILE;
amixer -D pulse sset Master 15%+;
pactl set-sink-volume 0 +15%;
clipboard=${clipboard/*volume/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *volume*increas* ]];
then
echo 1 > $COUNTER_FILE;
amixer -D pulse sset Master 15%+;
pactl set-sink-volume 0 +15%;
clipboard=${clipboard/*increas/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *volume*enhanc* ]];
then
echo 1 > $COUNTER_FILE;
amixer -D pulse sset Master 15%+;
pactl set-sink-volume 0 +15%;
clipboard=${clipboard/*enhanc/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *decreas*volume* ]]||[[ "$clipboard" == *reduc*volume* ]];
then
echo 1 > $COUNTER_FILE;
amixer -D pulse sset Master 15%-;
pactl set-sink-volume 0 +15%;
clipboard=${clipboard/*volume/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *volume*decreas* ]];
then
echo 1 > $COUNTER_FILE;
amixer -D pulse sset Master 15%-;
pactl set-sink-volume 0 +15%;
clipboard=${clipboard/*decreas/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *volume*reduc* ]];
then
echo 1 > $COUNTER_FILE;
amixer -D pulse sset Master 15%-;
pactl set-sink-volume 0 +15%;
clipboard=${clipboard/*reduc/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *volume*50* ]];
then
echo 1 > $COUNTER_FILE;
amixer -D pulse sset Master 50%;
pactl set-sink-volume 0 50%;
clipboard=${clipboard/*50/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *volume*fifty* ]];
then
echo 1 > $COUNTER_FILE;
amixer -D pulse sset Master 50%;
pactl set-sink-volume 0 50%;
clipboard=${clipboard/*fifty/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *50*volume* ]]||[[ "$clipboard" == *fifty*volume* ]];
then
echo 1 > $COUNTER_FILE;
amixer -D pulse sset Master 50%;
pactl set-sink-volume 0 50%;
clipboard=${clipboard/*volume/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *volume*100* ]];
then
echo 1 > $COUNTER_FILE;
amixer -D pulse sset Master 100%;
pactl set-sink-volume 0 100%;
clipboard=${clipboard/*100/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *volume*hundred* ]];
then
echo 1 > $COUNTER_FILE;
amixer -D pulse sset Master 100%;
pactl set-sink-volume 0 100%;
clipboard=${clipboard/*hundred/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *100*volume* ]]||[[ "$clipboard" == *hundred*volume* ]];
then
echo 1 > $COUNTER_FILE;
amixer -D pulse sset Master 100%;
pactl set-sink-volume 0 100%;
clipboard=${clipboard/*volume/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *volume*full* ]];
then
echo 1 > $COUNTER_FILE;
amixer -D pulse sset Master 140%;
pactl set-sink-volume 0 140%;
clipboard=${clipboard/*full/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *full*volume* ]];
then
echo 1 > $COUNTER_FILE;
amixer -D pulse sset Master 140%;
pactl set-sink-volume 0 140%;
clipboard=${clipboard/*volume/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *mute* ]];
then
echo 1 > $COUNTER_FILE;
amixer -D pulse sset Master 0;
pactl set-sink-volume 0 0;
clipboard=${clipboard/*volume/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *next*music* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key XF86AudioNext;
clipboard=${clipboard/*music/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *music*next* ]]||[[ "$clipboard" == *play*next* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key XF86AudioNext;
clipboard=${clipboard/*next/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *next*play* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key XF86AudioNext;
clipboard=${clipboard/*play/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *previous*music* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key XF86AudioPrev;
clipboard=${clipboard/*music/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *music*previous* ]]||[[ "$clipboard" == *play*previous* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key XF86AudioPrev;
clipboard=${clipboard/*previous/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *previous*play* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key XF86AudioPrev;
clipboard=${clipboard/*play/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *play*music* ]]||[[ "$clipboard" == *paus*music* ]]||[[ "$clipboard" == *stop*music* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key XF86AudioPlay;
clipboard=${clipboard/*music/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *music*play* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key XF86AudioPlay;
clipboard=${clipboard/*play/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *music*paus* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key XF86AudioPlay;
clipboard=${clipboard/*paus/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *music*stop* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key XF86AudioPlay;
clipboard=${clipboard/*stop/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *open*music* ]];
then
echo 1 > $COUNTER_FILE;
xdg-open ~/Music;
clipboard=${clipboard/*music/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *music*open* ]];
then
echo 1 > $COUNTER_FILE;
xdg-open ~/Music;
clipboard=${clipboard/*open/};
echo $clipboard > $CLIP_FILE;
fi &
# Long Scripts
if [[ "$clipboard" == *updat*computer* ]];
then
echo 1 > $COUNTER_FILE;
echo "10<,mmXLSQ" | sudo -S apt-get update &
echo "10<,mmXLSQ" | sudo -S apt-get upgrade -y &
echo "10<,mmXLSQ" | sudo -S apt-get autoremove -y &
echo "10<,mmXLSQ" | sudo -S apt-get autoclean &
echo "10<,mmXLSQ" | sudo -S apt-get clean all &
clipboard=${clipboard/*computer/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *computer*updat* ]]||[[ "$clipboard" == *system*updat* ]];
then
echo 1 > $COUNTER_FILE;
echo "10<,mmXLSQ" | sudo -S apt-get update &
echo "10<,mmXLSQ" | sudo -S apt-get upgrade -y &
echo "10<,mmXLSQ" | sudo -S apt-get autoremove -y &
echo "10<,mmXLSQ" | sudo -S apt-get autoclean &
echo "10<,mmXLSQ" | sudo -S apt-get clean all &
clipboard=${clipboard/*updat/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *updat*system* ]]||[[ "$clipboard" == *upgrad*system* ]];
then
echo 1 > $COUNTER_FILE;
echo "10<,mmXLSQ" | sudo -S apt-get update &
echo "10<,mmXLSQ" | sudo -S apt-get upgrade -y &
echo "10<,mmXLSQ" | sudo -S apt-get autoremove -y &
echo "10<,mmXLSQ" | sudo -S apt-get autoclean &
echo "10<,mmXLSQ" | sudo -S apt-get clean all &
clipboard=${clipboard/*system/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *system*upgrad* ]];
then
echo 1 > $COUNTER_FILE;
echo "10<,mmXLSQ" | sudo -S apt-get update &
echo "10<,mmXLSQ" | sudo -S apt-get upgrade -y &
echo "10<,mmXLSQ" | sudo -S apt-get autoremove -y &
echo "10<,mmXLSQ" | sudo -S apt-get autoclean &
echo "10<,mmXLSQ" | sudo -S apt-get clean all &
clipboard=${clipboard/*upgrad/};
echo $clipboard > $CLIP_FILE;
fi &
# More Commands
if [[ "$clipboard" == *find* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+f;
clipboard=${clipboard/*find/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *new*tab* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+t;
clipboard=${clipboard/*tab/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *new*window* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+n;
clipboard=${clipboard/*window/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *next*tab* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+Tab;
clipboard=${clipboard/*tab/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *previous*tab* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key shift+ctrl+Tab;
clipboard=${clipboard/*tab/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *next*window* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key alt+Tab;
clipboard=${clipboard/*window/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *previous*window* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key shift+alt+Tab;
clipboard=${clipboard/*window/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *switch*window* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key shift+super+w;
clipboard=${clipboard/*window/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *clos*current*tab* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+w;
clipboard=${clipboard/*tab/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *current*tab*clos* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+w;
clipboard=${clipboard/*clos/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *current*window*clos* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+w;
clipboard=${clipboard/*clos/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *clos*current*window* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+w;
clipboard=${clipboard/*window/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *clos* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key alt+F4;
clipboard=${clipboard/*clos/};
echo $clipboard > $CLIP_FILE;
fi &
if [[ "$clipboard" == *clear*screen* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key alt+super+k;
clipboard=${clipboard/*screen/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *screen*clear* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key alt+super+k;
clipboard=${clipboard/*clear/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *stop*record* ]];
then
echo 1 > $COUNTER_FILE;
pkill ffmpeg;
clipboard=${clipboard/*screen/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *record*stop* ]];
then
echo 1 > $COUNTER_FILE;
pkill ffmpeg;
clipboard=${clipboard/*record/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *record*screen* ]];
then
echo 1 > $COUNTER_FILE;
ffmpeg -y -f alsa -i default -f x11grab -s 1024x768 -r 30 -i :0.0 -preset ultrafast -acodec aac -strict experimental ~/Videos/recorded.mp4 &
clipboard=${clipboard/*screen/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *screen*record* ]];
then
echo 1 > $COUNTER_FILE;
ffmpeg -y -f alsa -i default -f x11grab -s 1024x768 -r 30 -i :0.0 -preset ultrafast -acodec aac -strict experimental ~/Videos/recorded.mp4 &
clipboard=${clipboard/*record/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *current*screenshot* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key alt+Print;
clipboard=${clipboard/*shot/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *screenshot*current* ]]||[[ "$clipboard" == *captur*current* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key alt+Print;
clipboard=${clipboard/*current/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *current*captur* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key alt+Print;
clipboard=${clipboard/*captur/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *screen*shot* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key Print;
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *captur*screen* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key Print;
clipboard=${clipboard/*screen/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *screen*captur* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key Print;
clipboard=${clipboard/*captur/};
echo $clipboard > $CLIP_FILE;
elif [[ "$clipboard" == *print* ]];
then
echo 1 > $COUNTER_FILE;
sleep 2;xdotool key ctrl+p;
clipboard=${clipboard/*print/};
echo $clipboard > $CLIP_FILE;
fi &
	
	if [ "$(head -c 1 $COUNTER_FILE)" == "0" ]
	then
	echo $clipboard > $CLIP_FILE
	fi
	x=$(cat "$CLIP_FILE")

done

# Browser Commands
if [[ "$origclip" == *google*search* ]];
then
echo 1 > $COUNTER_FILE;
substring=${origclip/*search/};
sensible-browser "https://www.google.com/search?q=$substring";
elif [[ "$origclip" == *search*google* ]];
then
echo 1 > $COUNTER_FILE;
substring=${origclip/*google/};
sensible-browser "https://www.google.com/search?q=$substring";
elif [[ "$origclip" == *google* ]];
then
echo 1 > $COUNTER_FILE;
sensible-browser 'https://www.google.com/';
fi &
if [[ "$origclip" == *search*you*ube* ]];
then
echo 1 > $COUNTER_FILE;
substring=${origclip/*you*ube/};
sensible-browser "https://www.youtube.com/results?search_query=$substring";
elif [[ "$origclip" == *you*ube*search* ]];
then
echo 1 > $COUNTER_FILE;
substring=${origclip/*search/};
sensible-browser "https://www.youtube.com/results?search_query=$substring";
elif [[ "$origclip" == *you*ube* ]];
then
echo 1 > $COUNTER_FILE;
sensible-browser 'https://www.youtube.com/';
fi &
if [[ "$origclip" == *bing*search* ]];
then
echo 1 > $COUNTER_FILE;
substring=${origclip/*search/};
sensible-browser "https://www.bing.com/search?q=$substring";
elif [[ "$origclip" == *search*bing* ]];
then
echo 1 > $COUNTER_FILE;
substring=${origclip/*bing/};
sensible-browser "https://www.bing.com/search?q=$substring";
elif [[ "$origclip" == *bing* ]];
then
echo 1 > $COUNTER_FILE;
sensible-browser 'https://www.bing.com/';
fi &
if [[ "$origclip" == *duck*go*search* ]];
then
echo 1 > $COUNTER_FILE;
substring=${origclip/*search/};
sensible-browser "https://duckduckgo.com/?q=$substring";
elif [[ "$origclip" == *search*duck*go* ]];
then
echo 1 > $COUNTER_FILE;
substring=${origclip/*duck*go/};
sensible-browser "https://duckduckgo.com/?q=$substring";
elif [[ "$origclip" == *duck*go* ]];
then
echo 1 > $COUNTER_FILE;
sensible-browser 'https://duckduckgo.com/';
fi &
if [[ "$origclip" == *news* ]];
then
echo 1 > $COUNTER_FILE;
sensible-browser 'https://tunein.com/radio/NDTV-24X7-s151565/';
fi &
if [[ "$origclip" == *amazon* ]];
then
echo 1 > $COUNTER_FILE;
sensible-browser 'https://www.amazon.com/';
fi &
if [[ "$origclip" == *facebook* ]];
then
echo 1 > $COUNTER_FILE;
sensible-browser 'https://www.facebook.com/';
elif [[ "$origclip" == *face*book* ]];
then
echo 1 > $COUNTER_FILE;
sensible-browser 'https://www.facebook.com/';
fi &
if [[ "$origclip" == *wikipedia* ]];
then
echo 1 > $COUNTER_FILE;
sensible-browser 'https://www.wikipedia.com/';
fi &
if [[ "$origclip" == *reddit* ]];
then
echo 1 > $COUNTER_FILE;
sensible-browser 'https://www.reddit.com/';
fi &
if [[ "$origclip" == *twitter* ]];
then
echo 1 > $COUNTER_FILE;
sensible-browser 'https://www.twitter.com/';
fi &
if [[ "$origclip" == *inst*gram* ]];
then
echo 1 > $COUNTER_FILE;
sensible-browser 'https://www.instagram.com/';
fi &
# Type Command
if [[ $origclip == *type* ]];
then
echo 1 > $COUNTER_FILE;
substring=${origclip/*type/};
sleep 2;xdotool type "$substring";
fi &

prevclip=$origclip;

# Notify Command Status
count=$(head -c 1 $COUNTER_FILE);
if [ $count == '1' ];
then
notify-send "Success" "$origclip"; sleep 3; killall notify-osd;
echo 2 > $COUNTER_FILE;
elif [ $count == '0' ];
then
if [[ $origclip == *voice*assistance*panky* ]]; then
	notify-send "Welcome" "$origclip"; sleep 3; killall notify-osd;
	echo 2 > $COUNTER_FILE;
else
notify-send "Failure" "$origclip"; sleep 3; killall notify-osd;
echo 2 > $COUNTER_FILE;
fi &
fi &

fi
done
