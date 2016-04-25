FROM nginx

RUN apt-get install tar

# Download specific release of the Collections manager.
ADD https://github.com/DINA-Web/collections-ui/releases/download/v0.1.23/release.tar.gz /tmp/

RUN cd /tmp && tar -xvzf /tmp/release.tar.gz && \
    mv /tmp/dw-collection-manager/* /usr/share/nginx/html && \
    rm -r /tmp/dw-collection-manager/ && rm /tmp/release.tar.gz

# Set the HOST to beta-api.dina-web.net, this needs to be done in some other way
# to make the image easier to use.
RUN sed -i 's@REPLACEWITHHOST@'"https://beta-api.dina-web.net"'@g' /usr/share/nginx/html/index.html

COPY nginx-conf /etc/nginx/conf.d
