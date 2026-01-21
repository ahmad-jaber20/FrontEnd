FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

ENV HOST=0.0.0.0
ENV PORT=3010
ENV REACT_APP_API_URL=https://devops-2.sociumtech.com:8443

EXPOSE 3010

CMD ["npm", "start"]
