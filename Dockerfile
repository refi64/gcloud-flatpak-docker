FROM google/cloud-sdk
RUN \
  echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list && \
  apt update && \
  apt -t stretch-backports install -y flatpak ostree && \
  rm -rf /var/lib/apt/lists/*
