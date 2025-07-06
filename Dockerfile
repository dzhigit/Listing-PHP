FROM php:8.2-apache

# Устанавливаем зависимости, если нужно
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Копируем файлы проекта в контейнер
COPY . /var/www/html/

# Включаем mod_rewrite, если используется .htaccess
RUN a2enmod rewrite

# Настраиваем права
RUN chown -R www-data:www-data /var/www/html
