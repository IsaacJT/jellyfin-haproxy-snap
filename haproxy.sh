#!/bin/sh

SSL_CERT="${SNAP_COMMON}/ssl.crt"

if [ -e "${SSL_CERT}" ]; then
        CFG_FILE="haproxy-ssl.cfg"
        echo "${SSL_CERT} found; loading ${CFG_FILE}"
else
        CFG_FILE="haproxy.cfg"
        echo "${SSL_CERT} not found; loading ${CFG_FILE}"
fi

# Run in the foreground with the given configuration
exec ${SNAP}/usr/sbin/haproxy -db -C ${SNAP_COMMON} -f "${CFG_FILE}"
