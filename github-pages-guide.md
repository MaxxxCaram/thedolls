# Guía para Activar GitHub Pages en el Repositorio Miss Star International

Esta guía te mostrará cómo activar GitHub Pages para tu repositorio existente y hacer que tu sitio web sea accesible en línea.

## Pasos para Activar GitHub Pages

### 1. Ve a la Configuración del Repositorio

1. Abre tu navegador y ve a tu repositorio: https://github.com/MaxxxCaram/missstarweb2024
2. Haz clic en la pestaña "Settings" (Configuración) en la parte superior del repositorio

### 2. Navega a la Sección Pages

1. En el menú lateral izquierdo, desplázate hacia abajo y haz clic en "Pages" (estará en la sección "Code and automation")

### 3. Configura la Fuente (Source)

1. En la sección "Build and deployment" > "Source", selecciona "Deploy from a branch" en el menú desplegable
2. En el selector de rama (Branch), selecciona "main" 
3. En el selector de carpeta, deja "/" (root)
4. Haz clic en el botón "Save" (Guardar)

### 4. Espera a que se Complete el Despliegue

1. GitHub comenzará a construir y desplegar tu sitio
2. Este proceso puede tardar unos minutos
3. Una vez completado, verás un mensaje en la parte superior de la página indicando que tu sitio está publicado en una URL como:
   `https://maxxxcaram.github.io/missstarweb2024/`

### 5. Verifica tu Sitio

1. Haz clic en la URL proporcionada para verificar que tu sitio web se ve correctamente
2. Puede tardar unos minutos más en estar completamente disponible

## Solución de Problemas Comunes

### Si tu sitio muestra una página en blanco o errores:

1. Asegúrate de que todos los recursos (CSS, JavaScript, imágenes) usan rutas relativas
2. Verifica que no haya errores en la consola del navegador (F12 > Console)
3. Comprueba que la estructura de archivos sea correcta, con el archivo index.html en la raíz

### Si no ves la opción de GitHub Pages:

1. Asegúrate de que tienes permisos de administrador en el repositorio
2. Verifica que el repositorio sea público (o tengas una cuenta GitHub que permita Pages en repositorios privados)

## Personalización Adicional

### Dominio Personalizado (Opcional)

1. En la misma sección de Pages, puedes añadir un dominio personalizado en "Custom domain"
2. Sigue las instrucciones para configurar los registros DNS necesarios

### Elegir una Tema (Opcional)

1. GitHub Pages ofrece temas predefinidos, pero para un sitio HTML/CSS personalizado como el tuyo, es mejor no usar esta opción

## Actualizaciones Futuras

Cada vez que hagas cambios en tu repositorio y los subas (git push), GitHub Pages automáticamente actualizará tu sitio web con los nuevos cambios.

## Enlaces Útiles

- [Documentación oficial de GitHub Pages](https://docs.github.com/en/pages)
- [Solución de problemas para GitHub Pages](https://docs.github.com/en/pages/getting-started-with-github-pages/troubleshooting-github-pages-sites) 