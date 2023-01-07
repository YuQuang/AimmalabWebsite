FROM node:lts-alpine3.17

# Copy source file & Setting workspace
COPY . /Aimmalab/
WORKDIR /Aimmalab

# Using lagacy openssl
ENV NODE_OPTIONS=--openssl-legacy-provider

# Install dependency
RUN npm install

RUN npm install loader-utils@2.0.3

RUN npm run build

# Port expose
EXPOSE 3000

CMD ["npm", "run", "start"]

