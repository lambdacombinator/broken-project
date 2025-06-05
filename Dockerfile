FROM oven/bun

WORKDIR /usr/src/app

COPY package*.json bun.lockb ./
RUN bun i
COPY . .

EXPOSE $PORT
CMD [ "bun", "index.js" ]