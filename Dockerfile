FROM centos:latest
MAINTAINER snehal-snehalsalve7276@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/little-fashion.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip little-fashion.zip
RUN cp -rvf 2127_little_fashion* .
RUN rm -rf 2127_little_fashion little-fashion.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
