#!/bin/bash

echo '@reboot /bin/sleep 180 && /sbin/poweroff' | sudo crontab
sudo reboot

