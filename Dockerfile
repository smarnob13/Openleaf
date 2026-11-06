FROM texlive/texlive:latest

WORKDIR /app

RUN apt-get update && apt-get install -y nodejs npm && rm -rf /var/lib/apt/lists/*

COPY package.json ./
RUN npm install --omit=dev

COPY public ./public
COPY server ./server
COPY api ./api

EXPOSE 3000
CMD ["npm", "start"]
