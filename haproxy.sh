#!/bin/sh

exec ${SNAP}/usr/bin/haproxy -f ${SNAP_COMMON}/haproxy.cfg
