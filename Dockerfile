FROM progrium/busybox

RUN mv /lib/libgcc_s.so.1 /lib/libgcc_s.so.1.bak && mkdir -p /var/lib/nginx
RUN opkg-install nginx

ADD nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443

CMD ["/usr/sbin/nginx"]
