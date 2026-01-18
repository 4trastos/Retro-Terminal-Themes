# Retro Terminal Themes 🎛️
---

¡Dale a tu terminal un estilo retro clásico!  
Este proyecto permite cambiar fácilmente los colores de **GNOME Terminal** al estilo de computadoras antiguas:

- 🟢 Verde fósforo (CRT clásico)
- 🟧 Ámbar fósforo (VT220 / DEC)
- 🟦 Azul IBM (mainframe)

También incluye **temas para Visual Studio Code** para programar sin fatiga visual.

---

## 🔹 1. Contenido del proyecto

```

retro-terminal-themes/
├── retro-terminal-theme.sh  # Script principal para GNOME Terminal
├── vscode/                  # Configuraciones para VS Code
│   ├── green.json
│   ├── amber.json
│   └── blue.json
├── README.md                # Este archivo
└── .gitignore

````

---

## 💻 2. Instalación

1. Clona el repositorio:

```bash
git clone https://github.com/TU_USUARIO/retro-terminal-themes.git
cd retro-terminal-themes
````

2. Haz ejecutable el script:

```bash
chmod +x retro-terminal-theme.sh
```

3. Ya está listo para usar.

---

## ▶️ 3. Uso del script

Ejecuta:

```bash
./retro-terminal-theme.sh
```

Verás un menú interactivo:

```
1) Verde fósforo (green CRT)
2) Ámbar fósforo (amber CRT)
3) Azul IBM (blue CRT)
4) Restaurar colores por defecto
0) Salir
```

Selecciona la opción que quieras y el tema se aplicará al instante.

💡 **Tip:** Puedes ejecutar el script tantas veces como quieras para cambiar de tema rápidamente.

---

## 🖥️ 4. Configuración de Visual Studio Code

En la carpeta `vscode/` encontrarás los archivos JSON para cada tema:

* `green.json`
* `amber.json`
* `blue.json`

Para aplicar:

1. Abre VS Code
2. `Ctrl+Shift+P` → *Preferences: Open Settings (JSON)*
3. Copia el contenido del archivo JSON correspondiente dentro de tu `settings.json`
4. Guarda y disfruta del tema retro mientras programas.

---

## 🔄 5. Restaurar colores originales

El script incluye una opción en el menú para volver a los colores por defecto de GNOME Terminal, sin borrar tu configuración actual.

---

## 🚀 6. Contribución

Si quieres aportar mejoras:

1. Haz un fork del proyecto
2. Crea una nueva rama: `git checkout -b mi-mejora`
3. Haz commit de tus cambios: `git commit -m "Agrega mejora"`
4. Envía un pull request

---

## 📌 7. Subir a GitHub (si no lo has hecho)

```bash
git init
git add .
git commit -m "Add retro terminal theme switcher"
git branch -M main
git remote add origin https://github.com/TU_USUARIO/retro-terminal-themes.git
git push -u origin main
```

---

## ✨ 8. Extras

* Fuente recomendada: **Fira Code**, **DejaVu Sans Mono**, o **Terminus**
* Tamaño de fuente sugerido: 11–13
* Cursor: línea (`line`) y parpadeante (`blink`)
* Opcional: transparencia mínima para efecto CRT realista

---

Creado con ❤️ por **David Gallego**

