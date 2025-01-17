FROM php:8.3-cli-alpine AS build

WORKDIR /app

COPY --from=composer /usr/bin/composer /usr/bin/composer

COPY . .

RUN composer install

RUN php decrypter app:build decrypter --build-version=1.0

FROM php:8.3-cli-alpine

COPY --from=build app/builds/decrypter /app/decrypter

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
