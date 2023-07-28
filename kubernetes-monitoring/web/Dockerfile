FROM nginx:stable-alpine


ENV USER 'www'
ENV GROUP 'www'
ENV UUID '1001'
ENV SITE_PATH '/app'

RUN adduser -D -g $GROUP $USER -u $UUID && \
	mkdir -p $SITE_PATH && \ 
	chown -R $USER:$GROUP $SITE_PATH 

COPY conf/default.conf /etc/nginx/conf.d/default.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY pages/index.html /app/index.html

WORKDIR /app
EXPOSE 8000/tcp

CMD ["nginx", "-g", "daemon off;"]
