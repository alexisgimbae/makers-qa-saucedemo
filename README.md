# 🧪 Mock page SauceDemo / Robot Framework

Este repositorio contiene los scripts para la implementación del (Módulo de Automatización) para la Prueba Técnica de QA de Makers, enfocado en la Mock page SauceDemo.

## Objetivo

Automatizar un conjunto mínimo de pruebas críticas basadas en unos criterios de acepación de evaluación de Makers, ésto con el fin de validar el flujo de inicio de sesión de la mock page [SauceDemo](https://www.saucedemo.com/):

Criterios de acepación:
1. Login exitoso con credenciales válidas
2. Login fallido con contraseña incorrecta  
3. Validación de campos obligatorios

## Tipo de prueba
- Funcional / Smoke Test

## Técnica de prueba
- Caja Negra

## Nivel de prueba
- Sistema

## Tecnologías
- **Robot Framework** 7.3.2 
- **SeleniumLibrary** 6.8.0 
- **Selenium** 4.37.0
- **Pip** 25.3
- **Python** 3.13.1 
- **Geckodriver** 0.36.0 (2025-02-24 15:57)
- **Git** 2.52.0
- **IDE Vs Code**

## Prerrequisitos de Instalación
### Programas y Librerías Necesarios:
- Instalar Python y pip
- Descargar desde: https://python.org

### Instalar todas las dependencias con pip
- pip install robotframework
- pip install robotframework-seleniumlibrary
- pip install selenium
- pip install webdriver-manager

### Navegador Firefox
- Descargar desde: https://mozilla.org/firefox

### GeckoDriver (para Firefox)
- Descargar manualmente desde: https://github.com/mozilla/geckodriver/releases, y agregar el ejecutable al PATH del sistema

## Verificar instalaciones
- python --version
- pip --version
- robot --version

## Ejecución de Pruebas
- Navegar al directorio del proyecto y ejecutar en la terminal o cmd:

### Ejecutar con tags específicos
- robot -i ******

## Reportes Generados
Después de la ejecución, se generan automáticamente:
- **report.html** = Reporte ejecutivo con resultados
- **log.html** = Log detallado paso a paso
- **output.xml** = Datos estructurados para integraciones
- **screenshot-{index}.png** = Capturas de evidencia visual

## Evidencias
El script captura screenshots automáticamente en escenarios:
- screenshot-{index}.png
- screenshot-{index}.png

## Archivos
- **automation.robot** - Script principal de automatización
- **README.md** - Documentación del proyecto

## Casos de Uso
### Smoke Test:
- TC_001: Login con usuario admin válido
- TC_002: Login fallido con contraseña errónea  
- TC_003: Validación de campos vacíos

### Security Tests:
- TC_004: SQL Injection en campos de login
- TC_005: Authentication Bypass

## Licencia
MIT License

Copyright (c) 2024 Alexis Giménez.
