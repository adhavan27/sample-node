FROM node
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENTRYPOINT npm run start
EXPOSE 5000
CMD ["node", "server.js"]
