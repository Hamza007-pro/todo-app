FROM node:12-alpine

#Install git
RUN apk add --no-cache git

#Clone the repository
RUN git clone -q https://github.com/najasoft/todo-app.git

#Set the working directory
WORKDIR /todo-app/app

#Install the dependencies
Run yarn install --production

CMD ["node", "/src/index.js"]
