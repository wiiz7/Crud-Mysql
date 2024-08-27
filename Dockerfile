# Usa una imagen base
FROM node:20

# Crea un directorio de trabajo
WORKDIR /app

# Copia los archivos de la aplicación
COPY package*.json ./
RUN npm install
COPY . .

# Expone el puerto de la aplicación
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]

