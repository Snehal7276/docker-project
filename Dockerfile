FROM centos:latest
MAINTAINER snehal-snehalsalve7276@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/healet.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip healet.zip
RUN cp -rvf healet-html* .
RUN rm -rf healet-html healet.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
