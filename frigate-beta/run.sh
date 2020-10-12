#!/usr/bin/env bashio

export FRIGATE_RTSP_PASSWORD=$(bashio::config 'FRIGATE_RTSP_PASSWORD')
export CONFIG_FILE=$(bashio::config 'CONFIG_FILE')

sed -i 's|/config/config.yml|'$CONFIG_FILE'|g' /opt/frigate/detect_objects.py
python3.8 -u detect_objects.py