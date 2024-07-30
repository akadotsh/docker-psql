FROM postgres:16.2

ENV POSTGRES_PASSWORD=$POSTGRES_PASSWORD

VOLUME [ "/var/lib/postgresql/data" ]

HEALTHCHECK --interval=10s --timeout=5s --start-period=10s --retries=5 \
  CMD pg_isready -U postgres || exit 1


