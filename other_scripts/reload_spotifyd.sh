#!/usr/bin/sh

#cerramos la instancia de spotifyd que existe
systemctl --user stop spotifyd

#reabrimos
systemctl --user enable spotifyd --now
