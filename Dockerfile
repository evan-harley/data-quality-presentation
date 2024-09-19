FROM node:alpine as build

ADD . /app
WORKDIR /app

RUN npm install
RUN npm run build

FROM nginx:stable as data-quality-presentation
RUN addgroup --system node
RUN adduser --system node --ingroup node

USER:node:node

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/build /usr/share/nginx/html
