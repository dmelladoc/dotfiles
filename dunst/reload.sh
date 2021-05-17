#!/bin/bash

pkill dunst
dunst -config ~/.config/dunst/dunstrc &

notify-send -u normal "Dunst ha reinicializado correctamente!"
