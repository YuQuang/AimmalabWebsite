FROM node:lts-alpine3.17

COPY . /Aimmalab/
WORKDIR /Aimmalab

ENV NODE_OPTIONS=--openssl-legacy-provider

#######################
# Install Dependency
#######################
RUN npm install
RUN npm run build


#######################
# Run server
#######################
EXPOSE 3000
CMD ["npm", "run", "start"]

