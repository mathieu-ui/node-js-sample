# Utiliser une image de base officielle Node.js
FROM node:14

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier package.json et package-lock.json pour installer les dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste de l'application
COPY . .

# Exposer le port sur lequel l'application s'exécute
EXPOSE 8080

# Démarrer l'application
CMD ["npm", "start"]