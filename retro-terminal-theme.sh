#!/usr/bin/env bash

PROFILE=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d "'")
BASE_PATH="/org/gnome/terminal/legacy/profiles:/:$PROFILE/"

apply_green() {
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH use-theme-colors false
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH foreground-color "'#00FF00'"
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH background-color "'#000000'"
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH cursor-colors-set true
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH cursor-background-color "'#66FF66'"
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH highlight-colors-set true
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH highlight-background-color "'#003300'"
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH highlight-foreground-color "'#66FF66'"
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH palette "['#000000', '#006600', '#00FF00', '#33FF33', '#009900', '#66FF66', '#00CC66', '#99FF99', '#003300', '#339933', '#66FF66', '#99FF99', '#33FF66', '#66FF99', '#33CC99', '#CCFFCC']"
}

apply_amber() {
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH use-theme-colors false
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH foreground-color "'#FFB000'"
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH background-color "'#000000'"
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH cursor-colors-set true
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH cursor-background-color "'#FFD966'"
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH highlight-colors-set true
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH highlight-background-color "'#402800'"
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH highlight-foreground-color "'#FFD966'"
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH palette "['#000000', '#663300', '#FFB000', '#FFD966', '#996600', '#FFCC66', '#CC9900', '#FFE5B4', '#332200', '#996633', '#FFD966', '#FFF2CC', '#FFCC66', '#FFD9B3', '#FFEECC', '#FFFFFF']"
}

apply_blue() {
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH use-theme-colors false
  gsettings set org.gome.Terminal.Legacy.Profile:$BASE_PATH foreground-color "'#00BFFF'"
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH background-color "'#000000'"
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH cursor-colors-set true
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH cursor-background-color "'#66D9FF'"
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH highlight-colors-set true
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH highlight-background-color "'#002233'"
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH highlight-foreground-color "'#66D9FF'"
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH palette "['#000000', '#003366', '#00BFFF', '#66D9FF', '#006699', '#66CCFF', '#0099CC', '#B3ECFF', '#00111A', '#004466', '#66D9FF', '#CCF5FF', '#66CCFF', '#99E6FF', '#CCF2FF', '#FFFFFF']"
}

restore_default() {
  gsettings set org.gnome.Terminal.Legacy.Profile:$BASE_PATH use-theme-colors true
}

clear
echo "====================================="
echo "   Retro Terminal Theme Switcher"
echo "====================================="
echo "1) Verde fósforo (green CRT)"
echo "2) Ámbar fósforo (amber CRT)"
echo "3) Azul IBM (blue CRT)"
echo "4) Restaurar colores por defecto"
echo "0) Salir"
echo "-------------------------------------"
read -rp "Elige una opción: " choice

case $choice in
  1) apply_green && echo "Tema verde aplicado ✔️" ;;
  2) apply_amber && echo "Tema ámbar aplicado ✔️" ;;
  3) apply_blue && echo "Tema azul aplicado ✔️" ;;
  4) restore_default && echo "Colores por defecto restaurados ✔️" ;;
  0) echo "Saliendo..." ;;
  *) echo "Opción no válida ❌" ;;
esac
