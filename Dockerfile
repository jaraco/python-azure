FROM python:3

# ------------------------
# SSH Server support
# ------------------------
RUN apt update \
    && apt install -y --no-install-recommends openssh-server \
    && echo "root:Docker!" | chpasswd

COPY sshd_config /etc/sshd_config
# ------------------------


EXPOSE 2222 80

COPY init_container.sh /bin/

RUN chmod 755 /bin/init_container.sh

CMD ["/bin/init_container.sh"]
