# Dockerfile
FROM node:20-alpine

WORKDIR /app

# Copier package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le projet
COPY . .

# Build Strapi pour l'admin
RUN npm run build

# Exposer le port Strapi
EXPOSE 1337

# Lancer Strapi
CMD ["npm", "start"]
