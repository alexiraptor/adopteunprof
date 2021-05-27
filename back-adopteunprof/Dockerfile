FROM php:7
RUN mkdir -p /app/back
WORKDIR /app/back
ADD . /app/back
RUN apt-get update -y && apt-get install -y openssl zip unzip git
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-install pdo pdo_mysql
RUN cd /app/back
RUN composer install
RUN php artisan key:generate
# RUN php artisan migrate
CMD php artisan passport:install --force && php artisan serve --host=0.0.0.0 --port=8000
EXPOSE 8000