#!/usr/bin/env bashio

export FRIGATE_RTSP_PASSWORD=$(bashio::config 'FRIGATE_RTSP_PASSWORD')
export CONFIG_FILE=$(bashio::config 'CONFIG_FILE')

python3 -u detect_objects.py