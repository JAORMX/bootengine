#!/bin/bash
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh

install() {
    inst_multiple \
        sgdisk \
        cgpt

    inst_script "$moddir/disk-uuid.sh" \
        "/usr/sbin/disk-uuid"

    inst_simple "$moddir/disk-uuid.service" \
        "$systemdsystemunitdir/disk-uuid.service"

    inst_rules "$moddir/90-disk-uuid.rules"
}
