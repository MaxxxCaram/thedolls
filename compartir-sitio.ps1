# Script para compartir el sitio web The Dolls Initiative localmente
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "    Servidor Local para The Dolls Initiative     " -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Este script inicia un servidor web local para que puedas ver el sitio." -ForegroundColor White
Write-Host ""

# Verificar si Python está instalado
$pythonInstalled = $false
try {
    $pythonVersion = python --version
    $pythonInstalled = $true
    Write-Host "Python detectado: $pythonVersion" -ForegroundColor Green
}
catch {
    try {
        $pythonVersion = python3 --version
        $pythonInstalled = $true
        Write-Host "Python 3 detectado: $pythonVersion" -ForegroundColor Green
    }
    catch {
        Write-Host "Python no está instalado. Por favor, instala Python desde python.org" -ForegroundColor Red
        Write-Host "O usa otra opción de las indicadas en SHARING.md" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "Presiona cualquier tecla para abrir el archivo de instrucciones..."
        $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
        Start-Process "SHARING.md"
        exit
    }
}

# Iniciar servidor web
Write-Host ""
Write-Host "Iniciando servidor web local..." -ForegroundColor Yellow
Write-Host ""

if ($pythonInstalled) {
    try {
        Write-Host "El sitio estará disponible en: http://localhost:8000" -ForegroundColor Green
        Write-Host "Comparte esta URL con personas en tu red local" -ForegroundColor Green
        Write-Host ""
        Write-Host "Para acceso desde Internet, considera usar ngrok o las otras opciones en SHARING.md" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "Presiona CTRL+C para detener el servidor cuando termines" -ForegroundColor Red
        Write-Host ""
        
        # Intentar con diferentes comandos de Python
        try {
            python -m http.server 8000
        }
        catch {
            try {
                python3 -m http.server 8000
            }
            catch {
                Write-Host "Error al iniciar el servidor. Intenta con otro método de SHARING.md" -ForegroundColor Red
                Start-Process "SHARING.md"
            }
        }
    }
    catch {
        Write-Host "Error al iniciar el servidor: $_" -ForegroundColor Red
    }
}

Write-Host "Servidor detenido. Presiona cualquier tecla para salir..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") 