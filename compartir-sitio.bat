@echo off
echo ===================================================
echo     Servidor Local para The Dolls Initiative      
echo ===================================================
echo.
echo Este script inicia un servidor web local para que puedas ver el sitio.
echo.

REM Verificar si Python está instalado
python --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo Python detectado en el sistema
    goto start_server
)

python3 --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo Python 3 detectado en el sistema
    goto start_server_py3
)

echo Python no está instalado en el sistema.
echo Por favor, instala Python desde python.org
echo O usa otra opción de las indicadas en SHARING.md
echo.
echo Presiona cualquier tecla para continuar...
pause >nul
start SHARING.md
goto end

:start_server
echo.
echo Iniciando servidor web local...
echo.
echo El sitio estará disponible en: http://localhost:8000
echo Comparte esta URL con personas en tu red local
echo.
echo Para acceso desde Internet, considera usar las opciones en SHARING.md
echo.
echo Presiona CTRL+C para detener el servidor cuando termines
echo.
python -m http.server 8000
goto end

:start_server_py3
echo.
echo Iniciando servidor web local...
echo.
echo El sitio estará disponible en: http://localhost:8000
echo Comparte esta URL con personas en tu red local
echo.
echo Para acceso desde Internet, considera usar las opciones en SHARING.md
echo.
echo Presiona CTRL+C para detener el servidor cuando termines
echo.
python3 -m http.server 8000
goto end

:end
echo.
echo Servidor detenido. Presiona cualquier tecla para salir...
pause >nul 