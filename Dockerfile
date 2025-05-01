# Imagen base
FROM node:18-alpine

# Directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar dependencias y luego instalar
COPY package*.json ./
RUN npm install

# Copiar todo el proyecto
COPY . .

# Expone el puerto (ajústalo si usas otro en el server.js)
EXPOSE 5000

# Comando para ejecutar el servidor
CMD ["node", "src/server.js"]
