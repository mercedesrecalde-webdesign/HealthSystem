# 🏥 Recalde Health System

Sistema de gestión de cuidados de enfermería para Patricio Recalde.

## 📱 Características

- ✅ Guardias Diurna (08:00-20:00) y Nocturna (20:00-08:00)
- 💊 Control de Medicación con alarmas sonoras
- 🔄 Rotaciones Posturales cada 2 horas
- 📋 Tareas de Cuidado (higiene, alimentación, hidratación)
- ❤️ Control de Signos Vitales (PA, FC, T°, SpO2, FR, Glucemia)
- 🔔 Alarmas diferentes para medicación vs tareas
- 💾 Auto-guardado (no se pierden datos si se cierra la app)
- 📊 Informes de Guardia
- ⚙️ Panel de Administración
- 📱 **Instalable como app** en Android y iPhone

---

## 🚀 INSTRUCCIONES DE DEPLOY

### Paso 1: Generar los iconos

1. Abrí `generar-iconos.html` en tu navegador
2. Hacé clic en **"Descargar TODOS los iconos"**
3. Se descargarán 6 archivos PNG

### Paso 2: Subir a GitHub

Subí estos **9 archivos** a tu repositorio:

```
📄 index.html
📄 manifest.json
📄 sw.js
🖼️ icon-512.png
🖼️ icon-maskable-512.png
🖼️ icon-192.png
🖼️ icon-maskable-192.png
🖼️ apple-touch-icon.png
🖼️ favicon.png
```

### Paso 3: Cloudflare Pages

1. Ir a [dash.cloudflare.com](https://dash.cloudflare.com) → **Pages**
2. Click en **"Create a project"**
3. **"Connect to Git"** → Seleccionar GitHub → Autorizar
4. Elegir el repositorio
5. Configuración:
   - **Framework preset:** `None`
   - **Build command:** *(dejar vacío)*
   - **Build output directory:** `/`
6. Click en **"Save and Deploy"**
7. Esperar 2-3 minutos

### Paso 4: Instalar en dispositivos

#### 📱 Android (Chrome):
1. Abrir la URL en Chrome
2. Esperar unos segundos
3. Menú **⋮** → **"Instalar aplicación"**

#### 📱 iPhone (Safari):
1. Abrir la URL en **Safari** (no Chrome)
2. Tocar botón **Compartir** (cuadrado con flecha)
3. **"Agregar a pantalla de inicio"**

---

## ⚠️ IMPORTANTE

- Los **6 archivos de iconos son OBLIGATORIOS** para que funcione la instalación
- En iPhone **DEBE** usarse Safari (Chrome no soporta PWA en iOS)
- Después del deploy, esperar 2-3 minutos antes de intentar instalar
- La app necesita **HTTPS** (Cloudflare Pages lo proporciona automáticamente)

---

## 🔐 Acceso Administrador

**Contraseña:** `recalde2024`

---

## 📁 Estructura de Archivos

```
├── index.html              # App principal
├── manifest.json           # Configuración PWA
├── sw.js                   # Service Worker (offline)
├── icon-512.png            # Icono 512x512
├── icon-maskable-512.png   # Icono maskable 512x512
├── icon-192.png            # Icono 192x192
├── icon-maskable-192.png   # Icono maskable 192x192
├── apple-touch-icon.png    # Icono iOS 180x180
├── favicon.png             # Favicon 32x32
└── generar-iconos.html     # Herramienta para generar iconos
```

---

Desarrollado con ❤️ para el cuidado de Patricio Recalde
