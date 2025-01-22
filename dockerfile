# Link to repository: https://github.com/jinrentan/javascript-tetris.git
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 5000
RUN npm install -g serve
CMD ["serve", "-s", ".", "-l", "5000"]