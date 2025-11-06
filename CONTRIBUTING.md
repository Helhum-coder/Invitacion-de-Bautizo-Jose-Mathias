# Guía de Contribución

¡Gracias por tu interés en contribuir a este proyecto!

## Estructura del Proyecto

```
Invitacion-de-Bautizo-Jose-Mathias/
├── index.html              # Página principal (PWA)
├── offline.html            # Página offline
├── manifest.json           # Configuración PWA
├── service-worker.js       # Service Worker para offline
├── favicon.ico             # Favicon del sitio
├── robots.txt              # Configuración SEO
├── sitemap.xml             # Mapa del sitio
├── package.json            # Configuración npm
├── generate-icons.sh       # Script para generar íconos
├── icons/                  # Íconos PWA
│   ├── icon-72x72.png
│   ├── icon-96x96.png
│   ├── icon-128x128.png
│   ├── icon-144x144.png
│   ├── icon-152x152.png
│   ├── icon-192x192.png
│   ├── icon-384x384.png
│   └── icon-512x512.png
├── iCloud Photos from Helbs LozRoj/
│   └── 89403b46-9e13-4d3e-b6f6-b17c5359e2e6.jpg
├── invitacion_*.html       # Versiones alternativas
└── README.md               # Documentación principal
```

## Tecnologías Utilizadas

- **HTML5**: Estructura y contenido
- **CSS3**: Estilos y animaciones
- **JavaScript (ES6+)**: Funcionalidad interactiva
- **Service Worker API**: Funcionalidad offline
- **Web Share API**: Compartir contenido
- **Manifest API**: Instalación PWA
- **Google Calendar API**: Añadir eventos

## Características Principales

### 1. Progressive Web App (PWA)
- Instalable en dispositivos móviles y desktop
- Funciona offline después de la primera carga
- Actualizaciones automáticas mediante Service Worker
- Íconos personalizados para todas las plataformas

### 2. Funcionalidades Híbridas
- **Compartir**: Web Share API para compartir invitación
- **Calendario**: Integración con Google Calendar
- **Instalación**: Prompt personalizado de instalación
- **Offline**: Funcionalidad completa sin internet

### 3. Optimizaciones
- Caché inteligente con Service Worker
- Lazy loading de imágenes
- Compresión de recursos
- SEO optimizado

## Cómo Contribuir

### 1. Fork el repositorio
```bash
git clone https://github.com/Helhum-coder/Invitacion-de-Bautizo-Jose-Mathias.git
cd Invitacion-de-Bautizo-Jose-Mathias
```

### 2. Crear una rama para tu feature
```bash
git checkout -b feature/mi-nueva-funcionalidad
```

### 3. Hacer cambios
- Edita los archivos necesarios
- Sigue las guías de estilo del proyecto
- Prueba tus cambios localmente

### 4. Probar los cambios
```bash
npm run dev
# Abre http://localhost:8000
```

### 5. Construir para producción
```bash
npm run build
```

### 6. Commit y Push
```bash
git add .
git commit -m "feat: descripción de tu cambio"
git push origin feature/mi-nueva-funcionalidad
```

### 7. Crear Pull Request
- Ve a GitHub y crea un Pull Request
- Describe tus cambios en detalle
- Espera revisión y feedback

## Guías de Estilo

### HTML
- Usa indentación de 2 espacios
- Usa comillas dobles para atributos
- Cierra todas las etiquetas
- Usa semántica HTML5

### CSS
- Usa indentación de 2 espacios
- Ordena propiedades alfabéticamente
- Usa clases descriptivas (kebab-case)
- Agrupa selectores relacionados

### JavaScript
- Usa indentación de 2 espacios
- Usa const/let en lugar de var
- Usa camelCase para variables y funciones
- Comenta código complejo
- Usa async/await para promesas

### Commits
Sigue el formato de Conventional Commits:
- `feat:` Nueva funcionalidad
- `fix:` Corrección de bugs
- `docs:` Cambios en documentación
- `style:` Cambios de formato
- `refactor:` Refactorización de código
- `test:` Añadir tests
- `chore:` Mantenimiento

## Testing

### Testing Manual
1. Prueba en diferentes navegadores
2. Prueba en diferentes tamaños de pantalla
3. Prueba funcionalidad offline
4. Prueba instalación PWA
5. Prueba compartir y calendario

### Testing con Lighthouse
```bash
# Abre Chrome DevTools
# Ve a Lighthouse tab
# Run audit
```

### Criterios de Aceptación
- PWA Score > 90
- Performance > 80
- Accessibility > 90
- Best Practices > 90
- SEO > 90

## Personalización

### Cambiar Colores
Edita las variables CSS en `index.html`:
```css
#87CEEB  /* Azul cielo (fondo) */
#FFD700  /* Dorado (acentos) */
#2c3e50  /* Gris oscuro (texto) */
```

### Cambiar Contenido
1. **Nombre**: Busca "Jose Mathias" y reemplaza
2. **Fecha**: Busca "6 de septiembre de 2025" y reemplaza
3. **Lugar**: Busca "Parroquia de San Ginés" y reemplaza
4. **Padres/Padrinos**: Edita en sección `.parents-info`

### Cambiar Imagen
1. Reemplaza la imagen en `iCloud Photos from Helbs LozRoj/`
2. Actualiza la ruta en `index.html`
3. Actualiza la ruta en `service-worker.js`

### Regenerar Íconos
1. Edita colores en `generate-icons.sh`
2. Ejecuta: `./generate-icons.sh`
3. Los nuevos íconos se generarán en `icons/`

## Despliegue

### GitHub Pages
1. Ve a Settings > Pages
2. Selecciona branch `gh-pages`
3. La URL será: `https://[usuario].github.io/[repo]/`

### Netlify
1. Conecta tu repositorio
2. Build command: `npm run build`
3. Publish directory: `dist`

### Vercel
1. Importa proyecto desde GitHub
2. Framework: Other
3. Build command: `npm run build`
4. Output directory: `dist`

## Problemas Comunes

### Service Worker no se actualiza
```javascript
// En service-worker.js, incrementa la versión:
const CACHE_NAME = 'bautizo-jose-mathias-v2'; // v1 -> v2
```

### Manifest no válido
```bash
# Valida en:
https://manifest-validator.appspot.com/
```

### Íconos no se muestran
```bash
# Verifica rutas en manifest.json
# Verifica que los archivos existan
ls -la icons/
```

## Recursos Útiles

- [MDN Web Docs - PWA](https://developer.mozilla.org/es/docs/Web/Progressive_web_apps)
- [Google PWA Guide](https://web.dev/progressive-web-apps/)
- [Service Worker Cookbook](https://serviceworke.rs/)
- [Web Share API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Share_API)
- [Manifest Generator](https://www.simicart.com/manifest-generator.html/)

## Licencia

MIT License - Siéntete libre de usar y modificar este proyecto.

## Contacto

- GitHub: [@Helhum-coder](https://github.com/Helhum-coder)
- Issues: [GitHub Issues](https://github.com/Helhum-coder/Invitacion-de-Bautizo-Jose-Mathias/issues)

## Agradecimientos

Gracias a todos los que contribuyen a hacer este proyecto mejor. ¡Cada contribución cuenta! 🎉
