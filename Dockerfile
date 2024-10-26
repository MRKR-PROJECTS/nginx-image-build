FROM nginx:latest
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /usr/share/nginx/html/index.html
COPY . .
RUN ls
RUN cp config/proxy_config.conf /etc/nginx/conf.d/proxy_config.conf
RUN cp config/custom.html /usr/share/nginx/html/custom.html
RUN rm -rf config/
EXPOSE 80
