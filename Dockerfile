FROM nginx:alpine-slim

#COPY js favicon.png index.html reset.min.css style.css /love-story/

COPY . /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]