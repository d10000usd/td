FROM node:12.0
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY src ./
COPY datafeeds ./
COPY charting_library ./
EXPOSE 80
CMD ["node", "app.js"]

