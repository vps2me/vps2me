#!/bin/bash

locale-gen en_US.UTF-8
update-locale LC_ALL=en_US.UTF-8
update-locale LANGUAGE=en_US.UTF-8
update-locale LANG=en_US.UTF-8
locale-gen --purge
reboot