      apk update ; \
      apk add \
          bash \
          apache2-utils \
          ca-certificates \
          mariadb-client \
          nginx \
          openssl \
          php5 \
          php5-common \
          php5-apcu \
          php5-bcmath \
          php5-bz2 \
          php5-calendar \
          php5-ctype \
          php5-curl \
          php5-dba \
          php5-dom \
          php5-embed \
          php5-enchant \
          php5-exif \
          php5-fpm \
          php5-ftp \
          php5-gd \
          php5-gettext \
          php5-gmp \
          php5-iconv \
          php5-intl \
          php5-imap \
          php5-json \
          php5-ldap \
          php5-mcrypt \
          php5-mysqli \
          php5-odbc \
          php5-opcache \
          php5-openssl \
          php5-pcntl \
          php5-pdo \
          php5-pdo_mysql \
          php5-pdo_pgsql \
          php5-pdo_sqlite \
          php5-pgsql \
          php5-phar\
          php5-posix \
          php5-pspell \
          php5-shmop \
          php5-snmp \
          php5-soap \
          php5-sockets \
          php5-sqlite3 \
          php5-wddx \
          php5-xml \
          php5-xmlreader \
          php5-xmlrpc \
          php5-xml \
          php5-zip \
          php5-zlib \
          ; \
          \
      rm -rf /var/cache/apk/* ; \
      \
### Nginx and PHP5 Setup
      sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /etc/php5/php.ini ; \
      sed -i "s/nginx:x:100:101:nginx:\/var\/lib\/nginx:\/sbin\/nologin/nginx:x:100:101:nginx:\/data:\/bin\/bash/g" /etc/passwd ; \
      sed -i "s/nginx:x:100:101:nginx:\/var\/lib\/nginx:\/sbin\/nologin/nginx:x:100:101:nginx:\/data:\/bin\/bash/g" /etc/passwd- ; \
      \
### WWW  Installation
      mkdir -p /data/logs
