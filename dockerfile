FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY sender /usr/share/nginx/html/sender
COPY receiver /usr/share/nginx/html/receiver

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
