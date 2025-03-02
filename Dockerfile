# /app /usr /lib
#FROM  node:19.2-alpine3.16
#FROM  --platform=linux/amd64 node:19.2-alpine3.16
FROM --platform=$BUILDPLATFORM node:19.2-alpine3.16

#cd app
WORKDIR /app

#Destino /app
COPY package.json ./

#Ejecutar un comando
#Agregar && para ejecutar mas comandos
RUN npm install

COPY . .

#Realizar Testing
RUN npm run test

# Eliminar archivos y directorios no necesarios en produccion
RUN rm -rf test && rm -rf node_modules

# Instalar modulos para produccion
RUN npm install --prod

# Iniciar la aplicacion
CMD [ "node", "app.js" ]

