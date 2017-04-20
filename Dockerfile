# What image we should base this one from, in this case we use the node image as our base so we have
# node and npm installed and ready.
FROM node:6

# Optional metadata, in this case this images author. Labels for an image can be show with
# `docker inspect`
LABEL maintainer "Daniel Bergmann"

# Expose port 3000 from the container
EXPOSE 3000

# Copy our local Javascript app files to the image and place them in the folder /app, set /app as
# the working directory and install npm dependencies.
ADD *.js package.json /app/
WORKDIR /app
RUN npm install -q

# Default command to run when we start the container
CMD node server.js
