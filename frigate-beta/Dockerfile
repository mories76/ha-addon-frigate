FROM blakeblackshear/frigate:0.4.0-beta
LABEL maintainer "blakeb@blakeshome.com"


RUN sed -i 's/\/config\/config.yml/\/config\/frigate\/config.yml/g' /opt/frigate/detect_objects.py 

# TODO: Change to config options 
ENV FRIGATE_RTSP_PASSWORD=yourpassword

CMD ["python3", "-u", "detect_objects.py"]