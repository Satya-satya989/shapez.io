FROM node:18

WORKDIR /app

COPY . .

RUN npm install
RUN cd gulp && npm install
RUN cd gulp && npx gulp

RUN npm install -g serve

EXPOSE 8080

CMD ["serve", ".", "-l", "8080"]
