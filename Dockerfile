FROM node:16
WORKDIR /app
COPY . .
EXPOSE 9000
CMD ["npm", "run", "start"]