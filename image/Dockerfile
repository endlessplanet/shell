FROM fedora:27
COPY root /opt/docker/
RUN ["sh", "/opt/docker/run.sh"]
VOLUME /home/user
USER user
ENTRYPOINT ["sh", "/opt/docker/entrypoint.sh"]
CMD []