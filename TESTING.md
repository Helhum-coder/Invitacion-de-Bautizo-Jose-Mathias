# PWA Testing Checklist

## Funcionalidades Básicas
- [ ] La página se carga correctamente en navegador
- [ ] Las imágenes se muestran correctamente
- [ ] El modal de imagen funciona al hacer clic en la foto
- [ ] Los estilos CSS se aplican correctamente
- [ ] Las animaciones funcionan suavemente

## Progressive Web App (PWA)
- [ ] El manifest.json se carga sin errores
- [ ] El Service Worker se registra correctamente
- [ ] Los íconos de la aplicación son visibles
- [ ] El tema de color se aplica en dispositivos móviles
- [ ] La aplicación es instalable (prompt de instalación aparece)

## Funcionalidad Offline
- [ ] La página funciona sin conexión a internet después de la primera carga
- [ ] Las imágenes se cachean correctamente
- [ ] La página offline se muestra cuando no hay conexión
- [ ] El Service Worker actualiza el caché correctamente

## Funcionalidades Híbridas
- [ ] El botón "Compartir" funciona en navegadores compatibles
- [ ] El botón "Añadir al Calendario" abre Google Calendar
- [ ] El botón "Instalar App" aparece cuando está disponible
- [ ] El prompt de instalación se muestra correctamente
- [ ] La instalación se completa exitosamente

## SEO y Metadata
- [ ] Los meta tags de Open Graph están presentes
- [ ] Los meta tags de Twitter Cards están presentes
- [ ] Los datos estructurados (JSON-LD) son válidos
- [ ] El robots.txt es accesible
- [ ] El sitemap.xml es accesible y válido

## Responsividad
- [ ] La página se ve bien en móvil (< 768px)
- [ ] La página se ve bien en tablet (768px - 1024px)
- [ ] La página se ve bien en desktop (> 1024px)
- [ ] Los botones son fáciles de presionar en móvil
- [ ] El texto es legible en todos los tamaños

## Navegadores
- [ ] Chrome/Edge Desktop
- [ ] Chrome/Edge Mobile
- [ ] Safari Desktop
- [ ] Safari iOS
- [ ] Firefox Desktop
- [ ] Firefox Mobile

## Performance
- [ ] La página carga en menos de 3 segundos
- [ ] Las imágenes están optimizadas
- [ ] No hay errores de consola JavaScript
- [ ] El Service Worker no causa problemas de rendimiento

## Accesibilidad
- [ ] Los elementos tienen alt text apropiado
- [ ] El contraste de colores es adecuado
- [ ] La navegación por teclado funciona
- [ ] Los lectores de pantalla pueden leer el contenido

## Herramientas de Validación
1. **Lighthouse Audit** (Google Chrome DevTools)
   - PWA Score > 90
   - Performance Score > 80
   - Accessibility Score > 90
   - Best Practices Score > 90
   - SEO Score > 90

2. **Manifest Validator**
   - https://manifest-validator.appspot.com/

3. **Schema.org Validator**
   - https://validator.schema.org/

4. **PWA Builder**
   - https://www.pwabuilder.com/

## Comandos de Testing

### Iniciar servidor local
```bash
npm run dev
# Abre http://localhost:8000
```

### Construir para producción
```bash
npm run build
# Revisa los archivos en dist/
```

### Limpiar build
```bash
npm run clean
```

### Generar íconos (si es necesario)
```bash
./generate-icons.sh
```

## Notas de Testing
- Usa Chrome DevTools > Application > Service Workers para depurar
- Usa Chrome DevTools > Application > Manifest para verificar manifest.json
- Usa Chrome DevTools > Network para verificar caché
- Usa el modo "Offline" en Chrome DevTools para probar funcionalidad offline
- Borra el caché regularmente durante el desarrollo para ver cambios

## Problemas Comunes y Soluciones

### El Service Worker no se actualiza
- Solución: Cierra todas las pestañas de la app y vuelve a abrir
- Solución alternativa: DevTools > Application > Service Workers > Unregister

### La instalación no funciona
- Verifica que estés usando HTTPS (o localhost)
- Verifica que manifest.json esté correcto
- Verifica que el Service Worker esté registrado

### Las imágenes no se cachean
- Verifica que las rutas en service-worker.js sean correctas
- Verifica que las imágenes existan en el servidor

### El prompt de instalación no aparece
- Verifica que la app cumpla los requisitos de PWA
- Verifica que el usuario no haya descartado el prompt previamente
- Borra los datos del sitio en DevTools > Application > Storage
