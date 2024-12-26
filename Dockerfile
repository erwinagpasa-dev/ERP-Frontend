FROM node:20-slim AS base

WORKDIR /app
COPY package.json package-lock.json* ./
RUN npm install --force

COPY . .

EXPOSE 3000
CMD ["npm", "run", "dev"]
