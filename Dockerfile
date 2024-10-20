FROM node:20-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npx tailwindcss -i ./public/css/input.css -o ./public/css/output.css --minify
EXPOSE 3000
CMD ["npm", "start"]
