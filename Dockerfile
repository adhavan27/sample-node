FROM node
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENTRYPOINT npm run start
EXPOSE 6000
CMD ["node", "server.js"]
