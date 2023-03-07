FROM drakkan/sftpgo
USER root
RUN chown -R 1000:1000 /etc/sftpgo && chown 1000:1000 /var/lib/sftpgo /srv/sftpgo
USER 1000:1000
