FROM strapi/base
ARG http_proxy
ARG https_proxy
ARG no_proxy
ARG npm_registry
ARG sass_registry

WORKDIR /srv/app

# use proxy & private npm registry
# With internal npm repo (autosigned) disable strict ssl : strict-ssl false
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo "Europe/Paris" > /etc/timezone ; \
    if [ ! -z "$http_proxy" ] ; then \
        npm config delete proxy; \
        npm config set proxy $http_proxy; \
        npm config set https-proxy $https_proxy ; \
        npm config set no-proxy $no_proxy; \
   fi ; \
   [ -z "$npm_registry" ] || npm config set registry=$npm_registry ; \
   [ -z "$npm_registry" ] || npm config set strict-ssl false

COPY ./backend/package*.json ./

RUN npm ci --loglevel http

COPY backend/ .

ENV NODE_ENV production

RUN npm run build

EXPOSE 1337

CMD ["npm", "start"]
