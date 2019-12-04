FROM registry.access.redhat.com/ubi8/ubi:8.0
MAINTAINER ANANDPAVITHRAN <apavithr@redhat.com>
LABEL "Demo of webserver"
ENV "VAR1=apple"
ENV "VAR2=grape"
#RUN yum install -y --no-docs --disableplugin=subscription-manager httpd
RUN yum install -y httpd
#RUN yum clean all --disableplugin=subscription-manager -y
EXPOSE 80
ADD index.html /var/www/html/
CMD bash -c "/usr/sbin/httpd -DFOREGROUND"

