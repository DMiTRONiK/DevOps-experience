FROM php:8.1-apache

RUN apt-get update && apt-get install -y --no-install-recommends \
		ghostscript \
	; \
	rm -rf /var/lib/apt/lists/*

RUN set -ex; \
	\
	apt-get update; \
	apt-get install -y --no-install-recommends \
		libfreetype6-dev \
		libicu-dev \
		libjpeg-dev \
		libmagickwand-dev \
		libpng-dev \
		libwebp-dev \
		libzip-dev \
	; \
	\
	docker-php-ext-configure gd \
		--with-freetype \
		--with-jpeg \
		--with-webp \
	; \
	docker-php-ext-install -j "$(nproc)" \
		bcmath \
		exif \
		gd \
		intl \
		mysqli \
		zip \
	; \
	apt-get clean; \
	pecl install imagick-3.6.0; \
	docker-php-ext-enable imagick; \
	rm -r /tmp/pear; \
	docker-php-ext-enable opcache 

RUN set -eux; \
	a2enmod rewrite expires; \
	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' +

RUN set -eux; \
	version='5.9.3'; \
	\
	curl -L "https://wordpress.org/wordpress-$version.tar.gz" | tar -xz -C /usr/src/; \
	chown -R www-data:www-data /usr/src/wordpress; \
	mkdir wp-content; \
	for dir in /usr/src/wordpress/wp-content/*/ cache; do \
		dir="$(basename "${dir%/}")"; \
		mkdir "wp-content/$dir"; \
	done; \
	chown -R www-data:www-data wp-content; \
	chmod -R 777 wp-content

VOLUME /var/www/html

COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/
COPY --chown=www-data:www-data .htaccess /usr/src/wordpress/
COPY error-logging.ini /usr/local/etc/php/conf.d/error-logging.ini
COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]

EXPOSE 80
