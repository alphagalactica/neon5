FROM nginx:alpine
COPY index.html neongarten.html variants.js manifest.json /usr/share/nginx/html/
