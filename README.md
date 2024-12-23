# ESPHome Configs

Configs used for managing my ESP devices

## Pool Controller

`devices/pool-controller.yaml`

This is a weather station and pool monitor/controller.  Uses a BME280 for environmental monitoring,
 DS18B20 for pool temp, a SSR for controlling a peristaltic pump to feed chlorine to the pool and
 a contactless sensor to detect if the chlorine container is low.

# Feit bulbs

`devices/feit-bpa800.yaml`

I have a few types of these, BPA800's and O100's.  These were convert with tuya-convert -> tasmota -> esphome.

These devices have no ota password set because I don't want to disassemble them to flash them if something goes wrong.

Example command:

`esphome -s system_name matts-light -s friendly_name "Matt's Light" config devices/feit-bpa800.yaml`

# Konnected

Konnected alarm panel, custom firmware, mainly so I have a streamlined component config between all the different esp modules I have

Example command:

`esphome -s system_name konnected-1 -s friendly_name "Konnected Panel 1" config devices/konnected.yaml`

# ratgdo

ratgdo garage door opener custom firmware, same reason as above

Example command:

``
