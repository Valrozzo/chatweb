FROM nginx:alpine

COPY index.html app.js config.js styles.css /usr/share/nginx/html/
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

ENV BACKEND_URL=http://backend:3000

EXPOSE 80