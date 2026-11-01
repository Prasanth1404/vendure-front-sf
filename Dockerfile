# Image 
FROM node:20-alpine

# Landing Directory
WORKDIR /var/www/

# COPY Package file
COPY package*.json ./

# Modules Installation
RUN npm install

# COPY entire files 
COPY . ./

# Port using
EXPOSE 4201

# Trigger command
CMD [ "npm", "start" ]
