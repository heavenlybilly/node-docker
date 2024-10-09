ARG NODE_VERSION

FROM node:${NODE_VERSION}

WORKDIR /app

EXPOSE ${PORT}

ENTRYPOINT ["tail", "-f", "/dev/null"]