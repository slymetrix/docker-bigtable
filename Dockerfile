FROM google/cloud-sdk:alpine

RUN set -eux; \
    gcloud components install beta bigtable --quiet; \
    gcloud components update

EXPOSE 8086

CMD [ "gcloud", "beta", "emulators", "bigtable", "start", "--host-port=0.0.0.0:8086" ]