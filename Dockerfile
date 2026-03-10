FROM --platform=linux/amd64 debian:stable
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      -o DPkg::Options::="--force-confnew" \
      git bash curl pipx \
    && rm -rf /var/lib/apt/lists/*
RUN rm -fr /etc/localtime /usr/share/zoneinfo/localtime
RUN pipx install --global ggshield && rm -r /root/.cache/pip
