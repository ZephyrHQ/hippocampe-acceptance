FROM node:alpine

LABEL Author="Nikita Gryzlov <nixel2007@gmail.com>"

RUN apk --no-cache update \ 
    && apk --no-cache add inotify-tools \
    && rm -fr /var/cache/apk/*

RUN npm install -g selenium-side-runner

RUN mkdir -p /app/sides

WORKDIR /app

VOLUME [ "/app/sides" ]

CMD ["sleep", "100000d"]