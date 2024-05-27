FROM node:12-alpine

#Install git
RUN apk add --no-cache git

#Clone the repository
RUN git clone -q https://github.com/najasoft/todo-app.git

#Set the working directory
WORKDIR /app

# Copier le contenu du répertoire local dans le dossier app de l'image
COPY ..

#Install the dependencies
Run yarn install --production

# Exécuter l'application
CMD ["node", "/app/src/index.js"]
