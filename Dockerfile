FROM node:14

# setup workspace
RUN mkdir -p /home/app
WORKDIR /home/app

# copy dependency files
COPY package.json /home/app/package.json

# install dependencies
RUN npm install

# RUN server
EXPOSE 3000
CMD ["npm", "start"]