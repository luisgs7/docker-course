FROM postgres:13.1-alpine
LABEL maintainer "luis"

ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=admin_pass
ENV POSTGRES_DB=admin_db

EXPOSE 5432