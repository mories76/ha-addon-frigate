FROM blakeblackshear/frigate:0.3.0
LABEL maintainer "blakeb@blakeshome.com"

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Add Bashio 
ARG BASHIO_VERSION=0.6.0
RUN apt-get update && apt-get install -y --no-install-recommends \
        jq \
        curl \
    && rm -rf /var/lib/apt/lists/* \
    \
    && mkdir -p /tmp/bashio \
    && curl -L -s https://github.com/hassio-addons/bashio/archive/v${BASHIO_VERSION}.tar.gz | tar -xzf - --strip 1 -C /tmp/bashio \
    && mv /tmp/bashio/lib /usr/lib/bashio \
    && ln -s /usr/lib/bashio/bashio /usr/bin/bashio \
    && rm -rf /tmp/bashio
    
RUN sed -i 's/\/config\/config.yml/\/config\/frigate\/config.yml/g' /opt/frigate/detect_objects.py 

# Copy data for add-on
COPY run.sh .
RUN chmod a+x run.sh

CMD [ "./run.sh" ]