FROM php:8.3-cli-alpine

COPY --from=composer:2 /usr/bin/composer /usr/local/bin/composer

RUN mkdir /tools

WORKDIR /tools

COPY ./composer.json ./composer.lock /tools/

RUN composer install

ENV PATH="/tools/vendor/bin:$PATH"

RUN mkdir /workspace

WORKDIR /workspace

ENTRYPOINT [ "pint" ]
CMD [ "--test" ]