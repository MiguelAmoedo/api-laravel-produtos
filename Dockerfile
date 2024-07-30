# Usar uma imagem base PHP
FROM php:8.2-fpm

# Instalar extensões necessárias
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev libzip-dev unzip git libicu-dev libonig-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd \
    && docker-php-ext-install intl pdo pdo_mysql zip \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

# Definir o diretório de trabalho
WORKDIR /var/www

# Copiar o composer e instalar as dependências
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copiar os arquivos do projeto
COPY . .

# Instalar as dependências do Laravel
RUN composer install

# Expor a porta padrão do PHP-FPM
EXPOSE 9000

# Iniciar o PHP-FPM
CMD ["php-fpm"]
