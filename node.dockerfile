FROM 		node:alpine

LABEL 		author="Daniel Gil"

ENV			NODE_ENV=production
ENV			PORT=3000

WORKDIR		/var/www
COPY		package.json package-lock.json ./
run			npm install

COPY		. ./
EXPOSE		$PORT

ENTRYPOINT	["npm", "start"]
