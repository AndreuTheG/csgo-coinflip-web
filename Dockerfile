# Start your image with a node base image
FROM node:18

# The /app directory should act as the main application directory
WORKDIR /app

# Copy the app package and package-lock.json file
COPY package*.json ./

# Copy local directories to the current local directory of our docker image (/app)
COPY . .

# Install node packages, install serve, build the app, and remove dependencies at the end
RUN npm install

EXPOSE 4200
# diferencia entre 3000 y 4200 ??

# Start the app using serve command
CMD [ "npm", "start" ]