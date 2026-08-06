FROM nginx:alpine
COPY index.html neongarten.html variants.js /usr/share/nginx/html/
