FROM archlinux:base-devel
ARG VERSION='0.0.1'
LABEL org.opencontainers.image.licenses="Unlicense"
LABEL org.opencontainers.image.source="https://github.com/edwardtheharris/helm-bitcoin-node"
LABEL org.opencontainers.image.description="A Bitcoin Node running in ArchLinux"
LABEL org.opencontainers.image.name="bitcoin"
LABEL org.opencontainers.image.version=${VERSION}
RUN pacman -Syyu bitcoin-daemon --noconfirm && mkdir -pv /etc/bitcoin
COPY docker/bitcoind.conf /etc/bitcoin/bitcoind.conf
COPY docker/entrypoint.sh /bin/entrypoint.sh
RUN chmod +x /bin/entrypoint.sh
EXPOSE 8334
EXPOSE 8333
CMD ["/bin/entrypoint.sh"]
