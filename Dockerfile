   FROM node:20-alpine

   ENV NODE_ENV=production
   EXPOSE 8080/tcp

   WORKDIR /app

   RUN apk add --upgrade --no-cache python3 make g++ git

   COPY package.json ./
   RUN npm install --omit=dev

   COPY . .

   CMD ["node", "src/index.js"]
