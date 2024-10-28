# Usa la imagen de Node.js oficial
FROM node:18

# Crear el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar los archivos package.json y package-lock.json para instalar dependencias
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer el puerto que usará la API
EXPOSE 3000

# Comando para ejecutar la API
CMD ["node", "index.js"]
