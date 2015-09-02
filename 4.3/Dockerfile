FROM fkconsultin/docker-restyfpm:5.5

MAINTAINER Florian Kasper <florian.kasper@xpandmmi.com>


ENV WORDPRESS_VERSION 4.3
ENV WORDPRESS_SHA1 1e9046b584d4eaebac9e1f7292ca7003bfc8ffd7

COPY 01-run.sh /run.sh

RUN mkdir /system && curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz \
	&& echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c - \
	&& tar -xzf wordpress.tar.gz -C /system \
	&& rm wordpress.tar.gz \
	&& chown -R www-data:www-data /system/wordpress

WORKDIR /system/wordpress

CMD ["/run.sh"]

