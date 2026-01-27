#!/usr/bin/env bash

# Definimos la ruta completa para evitar el error "command not found"
OSASCRIPT="/usr/bin/osascript"

set_terminal_colors() {
    local fg=$1
    local bg=$2
    local cursor=$3

    $OSASCRIPT <<EOT
        tell application "Terminal"
            tell selected tab of front window
                set normal text color to $fg
                set background color to $bg
                set cursor color to $cursor
            end tell
        end tell
EOT
}

apply_green() {
    set_terminal_colors "{0, 65535, 0, 0}" "{0, 0, 0, 0}" "{26214, 65535, 26214, 0}"
}

apply_amber() {
    set_terminal_colors "{65535, 45056, 0, 0}" "{0, 0, 0, 0}" "{65535, 55552, 26214, 0}"
}

apply_blue() {
    set_terminal_colors "{0, 48895, 65535, 0}" "{0, 0, 0, 0}" "{26214, 55552, 65535, 0}"
}

restore_default() {
    $OSASCRIPT -e 'tell application "Terminal" to set current settings of window 1 to settings set "Basic"'
}

clear
echo "====================================="
echo "    Retro Terminal Switcher (macOS)"
echo "====================================="
echo "1) Verde fósforo (green CRT)"
echo "2) Ámbar fósforo (amber CRT)"
echo "3) Azul IBM (blue CRT)"
echo "4) Restaurar colores por defecto"
echo "0) Salir"
echo "-------------------------------------"
read -p "Elige una opción: " choice

case $choice in
    1) apply_green && echo "Tema verde aplicado ✔️" ;;
    2) apply_amber && echo "Tema ámbar aplicado ✔️" ;;
    3) apply_blue && echo "Tema azul aplicado ✔️" ;;
    4) restore_default && echo "Colores por defecto restaurados ✔️" ;;
    0) echo "Saliendo..." ;;
    *) echo "Opción no válida ❌" ;;
esac
