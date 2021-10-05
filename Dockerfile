FROM node:13-alpine

# Create a working directory within NodeJS Docker container
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied where available (npm@5+)
COPY package*.json ./

RUN npm install

# Bundle the App source
COPY . .

# Expose the port 3000 to network computers
EXPOSE 3000

#Run the node command and start our web application
CMD [ "node", "myapp.js" ]
