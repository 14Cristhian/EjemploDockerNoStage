# Docker Basic Buildx

Este proyecto es una aplicación básica que ejecuta un proceso cada 5 segundos. Está diseñado para ser una referencia sobre cómo trabajar con Docker Buildx, plataformas cruzadas y el manejo de aplicaciones con Node.js.

## Comandos permitidos

Los siguientes comandos están disponibles para el uso en el proyecto:

### 1. `npm install`
Instala las dependencias necesarias para ejecutar el proyecto.

### 2. `npm run test`
Ejecuta las pruebas unitarias del proyecto.

### 3. `npm start`
Inicia la aplicación en modo de ejecución.

## Comandos importantes usados aquí

En este proyecto se utiliza Docker Buildx para realizar compilaciones multiplataforma. A continuación se muestra un ejemplo de cómo construir la imagen con Buildx.

### Buildx Referencia

Para crear la imagen del contenedor con soporte para varias plataformas (como `linux/amd64`, `linux/arm64`, y `linux/arm/v7`), puedes usar el siguiente comando:

```bash
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 \
   -t klerith/cron-ticker:latest --push .
