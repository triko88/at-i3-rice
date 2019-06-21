#!/usr/bin/fish

#Terminate all other instances
killall -q polybar

#Wait until the processes are shut down...

while pgrep -u $UID -x polybar >/dev/null
	do sleep 1
end 

#Launch polybar
 polybar my_bar -c ~/.config/polybar/config &

#polybar exmaple & #For deafult polybar

echo "Polybar Launched..."
