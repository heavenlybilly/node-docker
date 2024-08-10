ARG NODE_VERSION

FROM node:${NODE_VERSION}

ARG PROJECT
ARG PORT

RUN echo "PROJECT: ${PROJECT}"
RUN echo "PORT: ${PORT}"

WORKDIR /app

COPY ${PROJECT}/package*.json ./

RUN npm install

COPY ${PROJECT} .

EXPOSE ${PORT}

CMD ["npm", "run", "dev"]