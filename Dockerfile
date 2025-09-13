FROM node:23.11.1-slim

WORKDIR /

COPY . .

RUN npm ci

RUN npm run build

EXPOSE 5173

CMD ["npm", "run", "serve"]