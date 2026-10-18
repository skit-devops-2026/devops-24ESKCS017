FROM nginx:alpine
COPY index.html register.html main.js style.css responsive.css /usr/share/nginx/html/
EXPOSE 80
