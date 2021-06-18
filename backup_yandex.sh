#!/bin/bash
mkdir /mnt/yandexdisk
mount -t davfs https://webdav.yandex.ru /mnt/yandexdisk
cd $1
tar -cvzf /mnt/yandexdisk/backup_$(date +%Y-%m-%d-%H-%M).tgz ./
umount -f /mnt/yandexdisk
rm -rf /mnt/yandexdisk
