FROM sanzante/clampn4

ADD ./ci_prepare_container.sh /
RUN chmod +x /ci_prepare_container.sh
ADD ./install-chrome.sh /
RUN chmod +x /install-chrome.sh
ADD ./google-chrome /
RUN chmod +x /google-chrome
RUN /ci_prepare_container.sh
EXPOSE 3306
EXPOSE 80
