FROM node:latest as dev-stage

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install
COPY . .

RUN npm install -g @vue/cli
RUN npm install -g @vue/cli-service-global

# build stage
#FROM dev-stage as build-stage
#RUN npm build

# production stage
#FROM nginx:stable-alpine as prod-stage
#COPY --from=build-stage /usr/src/app/dist /usr/share/nginx/html
#EXPOSE 80
#CMD ["nginx", "-g", "daemon off;"]

