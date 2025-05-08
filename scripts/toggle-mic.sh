IS_MUTED=`pactl get-source-mute @DEFAULT_SOURCE@ | grep yes`

if [[ -n $IS_MUTED ]]; then
  echo "is muted"
  pactl set-source-mute @DEFAULT_SOURCE@ toggle && paplay ~/.config/hypr/audios/discord-unmute-sound.mp3
else
  echo "isn't muted"
  pactl set-source-mute @DEFAULT_SOURCE@ toggle && paplay ~/.config/hypr/audios/discord-mute-sound.mp3
fi

