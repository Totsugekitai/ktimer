obj-m := ktimer.o

.PHONY: default clean load unload all all-clean

default:
	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd) clean

load:
	sudo ./load.sh

unload:
	sudo rmmod ktimer
	sudo rm /dev/ktimer

all: default load

all-clean: unload clean
