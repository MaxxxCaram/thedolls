# Guía para Desplegar The Dolls Initiative en Vercel

Esta guía te mostrará cómo desplegar el sitio web de The Dolls Initiative en Vercel para tenerlo en línea rápidamente.

## Pasos para Desplegar en Vercel

### 1. Crear una cuenta en Vercel

Si aún no tienes una cuenta en Vercel:
1. Ve a [vercel.com](https://vercel.com)
2. Haz clic en "Sign Up" 
3. Recomendado: Regístrate con tu cuenta de GitHub para facilitar la conexión

### 2. Importar tu Proyecto desde GitHub

1. Una vez que hayas iniciado sesión en Vercel, haz clic en "Add New..." → "Project"
2. Conecta tu cuenta de GitHub si aún no lo has hecho
3. Selecciona el repositorio `thedolls` de la lista
4. Vercel detectará automáticamente que es un sitio web estático

### 3. Configurar el Despliegue

En la pantalla de configuración:
1. **Project Name**: puedes dejarlo como "thedolls" o cambiarlo a algo como "the-dolls-initiative"
2. **Framework Preset**: selecciona "Other" o "Static Site"
3. **Root Directory**: deja el valor por defecto (/)
4. **Build Command**: déjalo en blanco para un sitio estático simple
5. **Output Directory**: déjalo en blanco (usará la raíz por defecto)

### 4. Variables de Entorno

No se necesitan variables de entorno para este proyecto.

### 5. Finalizar el Despliegue

1. Haz clic en "Deploy"
2. Vercel comenzará a desplegar tu sitio web
3. Una vez completado, recibirás una URL donde tu sitio está disponible (por ejemplo: https://thedolls.vercel.app)

### 6. Personalizar Dominio (Opcional)

Si deseas usar un dominio personalizado:
1. Ve a la pestaña "Settings" de tu proyecto
2. Navega a "Domains"
3. Haz clic en "Add" e ingresa tu dominio
4. Sigue las instrucciones para configurar los registros DNS

## Actualizaciones Futuras

Cada vez que hagas cambios en tu repositorio de GitHub y los subas (git push), Vercel automáticamente actualizará tu sitio web con los nuevos cambios.

## Ventajas de Vercel

- Despliegue automático con cada push a GitHub
- Alta velocidad y rendimiento global
- SSL gratuito
- Previsualizaciones para cada pull request
- Excelente soporte para sitios web estáticos
- Panel de control intuitivo

## Necesitas ayuda?

Si encuentras algún problema durante el despliegue, puedes:
1. Consultar la [documentación oficial de Vercel](https://vercel.com/docs)
2. Visitar el [foro de la comunidad de Vercel](https://github.com/vercel/vercel/discussions)
3. Contactar con el desarrollador del sitio web para obtener asistencia 