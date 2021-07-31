sudo insmod ktimer.ko
sudo mknod --mode=666 /dev/ktimer c `grep KitchenTimer /proc/devices | awk '{print $1;}'` 0
