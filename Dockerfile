FROM sanzante/clampn4

ADD ./ci_prepare_container.sh /
RUN chmod +x /ci_prepare_container.sh
ADD ./install-chrome.sh /
RUN chmod +x /install-chrome.sh
ADD ./google-chrome /
RUN chmod +x /google-chrome
RUN /ci_prepare_container.sh

RUN service mysql start
RUN echo "CREATE DATABASE drupal; CREATE USER 'drupal'@'127.0.0.1' IDENTIFIED BY 'drupal'; GRANT ALL ON drupal.* TO 'drupal'@'127.0.0.1';" | mysql

RUN service apache2 start
