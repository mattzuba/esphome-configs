export ESPHOME_DATA_DIR := .esphome
export MAKEFLAGS := --jobs=4
# MAKEFLAGS += --output-sync=target

CMD = run --no-logs

.PHONY: clean-all
clean-all:
	rm -rf $$ESPHOME_DATA_DIR

.PHONY: matts-light nikkis-light zoeys-light zacharys-light all-lights
FEIT800 = devices/feit-bpa800.yaml
all-lights: matts-light nikkis-light zoeys-light zacharys-light
matts-light:
	esphome -s system_name matts-light -s friendly_name "Matt's Light" $(CMD) $(FEIT800)

nikkis-light:
	esphome -s system_name nikkis-light -s friendly_name "Nikki's Light" $(CMD) $(FEIT800)

zoeys-light:
	esphome -s system_name zoeys-light -s friendly_name "Zoey's Light" $(CMD) $(FEIT800)

zacharys-light:
	esphome -s system_name zacharys-light -s friendly_name "Zachary's Light" $(CMD) $(FEIT800)

.PHONY: konnected-1 konnected-2 konnected-3 all-konnected
all-konnected: konnected-1 konnected-2 konnected-3
konnected-1:
	esphome $(CMD) devices/konnected-1.yaml

konnected-2:
	esphome $(CMD) devices/konnected-2.yaml

konnected-3:
	esphome $(CMD) devices/konnected-3.yaml

.PHONY: storage-sensor
storage-sensor:
	esphome $(CMD) devices/storage-sensor.yaml

.PHONY: garage-door
garage-door:
	esphome $(CMD) devices/ratgdo.yaml
