FROM node:latest AS build-stage
WORKDIR /site
COPY package*.json ./
RUN npm install
COPY ./ .
RUN npm run build

FROM nginx AS production-stage
RUN mkdir /site
COPY --from=build-stage /site/dist /app
COPY nginx.conf /etc/nginx/nginx.conf
