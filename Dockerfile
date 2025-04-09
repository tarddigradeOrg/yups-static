FROM nginx:1.23.4-alpine-slim
ENV NJS_VERSION   0.7.11


COPY nginx.conf /etc/nginx/sites-available/default
COPY /html/ /usr/share/nginx/html/
RUN chmod -R  +x /usr/share/nginx/html

EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
