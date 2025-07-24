#!/bin/sh

mkdir -p /mnt/disco-gcp-extra

mkfs.ext4 -m 0 -F -E lazy_itable_init=0,lazy_journal_init=0,discard /dev/sdb

mount -o discard,defaults /dev/sdb /mnt/disco-gcp-extra