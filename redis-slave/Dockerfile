FROM redis:7.0.5
 
RUN mkdir -p /redis
 
WORKDIR /redis
 
COPY sentrypoint.sh /usr/local/bin/
 
RUN chown redis:redis /redis/ && \
    chmod +x /usr/local/bin/sentrypoint.sh
 
EXPOSE 6379
EXPOSE 26379
 
ENTRYPOINT ["sentrypoint.sh"]