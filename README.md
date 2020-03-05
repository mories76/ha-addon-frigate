# Home Assistant Add-on: frigate

An Home Assitant Add-on for Frigate - Realtime Object Detection for IP Cameras  
All the heavy lifting is done by https://github.com/blakeblackshear/frigate
Uses OpenCV and Tensorflow to perform realtime object detection locally for IP cameras. Designed for integration with HomeAssistant or others via MQTT.

![Supports aarch64 Architecture][aarch64-shield] ![Supports amd64 Architecture][amd64-shield] ![Supports armhf Architecture][armhf-shield] ![Supports armv7 Architecture][armv7-shield] ![Supports i386 Architecture][i386-shield]

This repository contains two add-ons:  
frigate: uses the current production release 0.5.0  
frigate-beta: uses the current beta release 0.4.0-beta

## Installation

Follow these steps to get the add-on installed on your system:

1. Navigate in your Home Assistant frontend to **Supervisor** -> **Add-on Store**.
2. Add the following repository https://github.com/mories76/ha-addon-frigate
2. Find the "frigate" add-on and click it.
3. Click on the "INSTALL" button.

## How to use

The frigate config.yml should be at the following location  
HOMEASSISTANT_CONFIG_FOLDER/frigate/config.yml


[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-red.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-red.svg
[armv7-shield]: https://img.shields.io/badge/armv7-no-red.svg
[i386-shield]: https://img.shields.io/badge/i386-no-red.svg

