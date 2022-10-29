FROM node:lts-alpine3.16

# Copy source file & Setting workspace
COPY .nuxt /Aimmalab/
WORKDIR /Aimmalab

# Install dependency
RUN npm install

# Port expose
EXPOSE 3000

CMD ["npm", "run", "start"]

