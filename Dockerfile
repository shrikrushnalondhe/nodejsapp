FROM node:13-alpine

# Create a working directory within NodeJS Docker container
WORKDIR /usr/src/app

# Install app dependencies
# Copy the file package.json to the working directory with the following command:
  COPY package*.json ./
 
#After this we have to run npm install so that we can set up our node environment:
RUN npm install
RUN npm install express --save

# Copy the source code inside your working directory to the docker image by running:
COPY . .

# Expose the port 80 to network computers
EXPOSE 8081

#Run the node command and start our web application
CMD [ "node", "myapp.js" ]
