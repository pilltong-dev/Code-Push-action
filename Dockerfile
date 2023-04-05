FROM node:gallium-alpine3.16

WORKDIR /app
COPY . /app

RUN npm install -g @shm-open/code-push-cli \
    && apk update \
    && apk add git 

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]

