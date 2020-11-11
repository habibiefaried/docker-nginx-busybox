FROM progrium/busybox

RUN opkg-install nginx
RUN mkdir /var/lib/nginx

ADD nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443

CMD ["/usr/sbin/nginx"]
