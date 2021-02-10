# image for building docusaurus app
FROM node:15.3-alpine3.12 as builder

# copy application to temp folder
COPY . /tmp
RUN chmod a+x /tmp
WORKDIR /tmp

# install and build app
RUN npm install \
    && npm run build

# imagem for running docusaurus app
FROM nginx:1.16.0-alpine

# bopy builded app files only
COPY --from=builder /tmp/build /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
