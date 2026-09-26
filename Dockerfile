FROM node:22
WORKDIR /sandhu_anantvir_site
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 7775
ENV PORT=7775
CMD ["npm", "start"]