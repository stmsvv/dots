#!/bin/bash

option=$(printf "Выключить\nПерезагрузить\nВыйти\nЗаблокировать экран" | rofi -dmenu -no-show-icons)

case "$option" in
"Выключить") shutdown now ;;
"Перезагрузить") reboot ;;
"Выйти") hyprctl dispatch exit ;;
"Заблокировать экран") hyprlock ;;
*) exit 1 ;;
esac
