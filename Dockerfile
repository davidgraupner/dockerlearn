
# Version 0.1
# Built by David Graupner while learning Docker

FROM ubuntu:16.04
MAINTAINER David Graupner "grada17@gmail.com"
ENV LastUpdate 08/12/2-18
RUN apt-get update; apt-get install -y nginx
RUN echo 'Hi, I am in your container' > /var/www/html/index.html
VOLUME ["/root/static_web/volume1","/root/static_web/volume2"]
ADD bob/ /Bob
EXPOSE 80
HEALTHCHECK --interval=10s --timeout=1m --retries=5 CMD curl http://localhost || exit 1
CMD ["nginx","-g","daemon off;"]



