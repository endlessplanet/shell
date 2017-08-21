FROM fedora:26
COPY root /opt/docker/
RUN ["sh", "/opt/docker/run.sh"]
VOLUME /workspace
WORKDIR /workspace
USER user
ENTRYPOINT ["sh", "/opt/docker/entrypoint.sh"]
CMD []