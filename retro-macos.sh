#!/usr/bin/env bash

# Función para aplicar colores mediante AppleScript
set_terminal_colors() {
    local fg=$1
    local bg=$2
    local cursor=$3

    osascript <<EOT
        tell application "Terminal"
            set current settings of window 1 to {short name:"Retro"}
            tell selected tab of front window
                set normal text color to $fg
                set background color to $bg
                set cursor color to $cursor
            end tell
        end tell
EOT
}

apply_green() {
    # Formato {R, G, B} (0 a 65535)
    set_terminal_colors "{0, 65535, 0}" "{0, 0, 0}" "{26214, 65535, 26214}"
}

apply_amber() {
    set_terminal_colors "{65535, 45056, 0}" "{0, 0, 0}" "{65535, 55552, 26214}"
}

apply_blue() {
    set_terminal_colors "{0, 48895, 65535}" "{0, 0, 0}" "{26214, 55552, 65535}"
}

restore_default() {
    osascript -e 'tell application "Terminal" to set current settings of window 1 to settings set "Basic"'
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
