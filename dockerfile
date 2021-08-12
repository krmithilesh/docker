FROM centos:latest
MAINTAINER kr.mithilesh6@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/visual.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip visual.zip
RUN cp -rvf visual/* .
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
