FROM node:lts-alpine3.16

# Copy source file & Setting workspace
COPY . /Aimmalab/
WORKDIR /Aimmalab

# Install dependency
RUN npm install
RUN npm run build

# Port expose
EXPOSE 3000

CMD ["npm", "run", "start"]

