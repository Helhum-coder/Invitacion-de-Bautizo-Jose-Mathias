# Invitación de Bautizo - Jose Mathias

Este proyecto contiene una invitación digital para el bautizo de Jose Mathias, programada para el 6 de septiembre de 2025.

## Características

### 🎨 Diseño y Estilo
- Diseño elegante y profesional
- Animaciones suaves con Canvas
- Efectos visuales como partículas y brillo dorado alrededor de la foto
- Diseño responsivo que se adapta a diferentes tamaños de pantalla
- Elementos decorativos como cruces en las esquinas y una paloma espiritual detallada

### 📱 Progressive Web App (PWA)
- **Instalable**: Puede instalarse como aplicación nativa en dispositivos móviles y escritorio
- **Funciona sin internet**: Service Worker permite acceso offline completo
- **Actualizaciones automáticas**: Contenido se actualiza automáticamente cuando hay cambios
- **Íconos personalizados**: Íconos de la app para todas las plataformas
- **Experiencia nativa**: Se comporta como una app nativa cuando se instala

### ⚡ Funcionalidades Híbridas
- **Compartir**: Utiliza la Web Share API para compartir la invitación fácilmente
- **Añadir al Calendario**: Agrega el evento directamente a Google Calendar
- **Modo Offline**: Funciona completamente sin conexión a internet
- **Vista de foto ampliada**: Haz clic en la foto para verla en grande
- **Instalación rápida**: Prompt automático para instalar la app

## Cómo usar

### Opción 1: Navegar en el navegador
1. Abre el archivo `index.html` en cualquier navegador web moderno
2. La invitación se mostrará con un diseño elegante y limpio
3. Haz clic en la foto de Jose Mathias para verla en grande

### Opción 2: Instalar como PWA
1. Abre `index.html` en un navegador compatible (Chrome, Edge, Safari)
2. Haz clic en el botón "Instalar App" o acepta el prompt de instalación
3. La aplicación se instalará en tu dispositivo
4. Accede desde el escritorio o pantalla de inicio como cualquier app

### Opción 3: Compartir la invitación
1. Haz clic en el botón "Compartir"
2. Elige cómo deseas compartir (WhatsApp, correo, etc.)
3. Los invitados recibirán el enlace directo

### Opción 4: GitHub Pages
1. Activa GitHub Pages en la configuración del repositorio
2. Selecciona la rama "gh-pages" como fuente
3. Comparte la URL generada con tus invitados

## Versiones disponibles

El proyecto incluye varias versiones de la invitación:

- **`index.html`** - ⭐ Versión principal recomendada (PWA con diseño simple y elegante, funciona sin internet)
- **`invitacion_bautizo.html`** - Versión con animaciones complejas y efectos visuales avanzados
- **`invitacion_simple_nueva.html`** - Versión simple optimizada para funcionar sin conexión a internet
- **`invitacion_nueva.html`** - Versión con canvas y efectos de partículas

## Desarrollo y Build

### Instalar dependencias
```bash
npm install
```

### Generar íconos PWA
```bash
./generate-icons.sh
```

### Iniciar servidor de desarrollo
```bash
npm run dev
```
Luego abre http://localhost:8000 en tu navegador.

### Construir para producción
```bash
npm run build
```
Los archivos se generarán en la carpeta `dist/`.

### Limpiar build
```bash
npm run clean
```

## Arquitectura PWA

### Archivos clave:
- **`manifest.json`**: Configuración de la PWA (nombre, íconos, colores, etc.)
- **`service-worker.js`**: Manejo de cache y funcionalidad offline
- **`icons/`**: Íconos de la aplicación en diferentes tamaños
- **`index.html`**: Aplicación principal con integración PWA

### Service Worker
El Service Worker implementa una estrategia de "Cache First":
1. Primero busca en el cache
2. Si no encuentra, descarga de la red
3. Actualiza el cache con contenido nuevo
4. Funciona completamente offline después de la primera carga

## Personalización

Si deseas personalizar la invitación:

1. **Imagen**: Reemplaza la imagen en `iCloud Photos from Helbs LozRoj/` por tu propia foto
2. **Textos**: Modifica los textos, fechas y ubicación en `index.html`
3. **Colores**: Ajusta los colores en el código CSS según tus preferencias
4. **Íconos**: Ejecuta `./generate-icons.sh` después de cambiar los colores para regenerar los íconos
5. **Manifest**: Actualiza `manifest.json` con el nombre y descripción personalizada

## Requisitos técnicos

- **Navegador web moderno** con soporte para:
  - HTML5 Canvas
  - Service Workers
  - Web Share API (opcional)
  - Instalación de PWA
- **HTTPS** requerido para PWA en producción (GitHub Pages lo proporciona automáticamente)
- Conexión a Internet solo para la primera carga (luego funciona offline)

## Compatibilidad

### Navegadores soportados:
- ✅ Chrome/Edge (Desktop y Mobile) - Soporte completo
- ✅ Safari (iOS/macOS) - Soporte completo
- ✅ Firefox (Desktop y Mobile) - Soporte completo
- ✅ Opera - Soporte completo

### Funcionalidades por navegador:
- **Service Worker**: Todos los navegadores modernos
- **Instalación PWA**: Chrome, Edge, Safari (iOS 11.3+)
- **Web Share API**: Chrome, Safari (iOS/macOS), Edge

## Créditos

Diseñado y desarrollado para la celebración del bautizo de Jose Mathias.

## Licencia

MIT License - Siéntete libre de usar y modificar este proyecto.

