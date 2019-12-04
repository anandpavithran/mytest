FROM registry.access.redhat.com/rhel7:7.6
MAINTAINER ANANDPAVITHRAN <apavithr@redhat.com>
LABEL "Demo of webserver"
ENV "VAR1=apple"
ENV "VAR2=grape"
COPY rhel_dvd.repo /etc/yum.repos.d/
RUN yum install httpd -y
RUN yum clean all
EXPOSE 80
ADD index.html /var/www/html/
CMD bash -c "/usr/sbin/httpd -DFOREGROUND"

