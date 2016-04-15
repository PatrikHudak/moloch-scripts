#!/bin/bash

TDIR=/data/moloch
ES_SOCKET="127.0.0.1:9200"

echo "[-] Adding user 'admin' with password 'admin'"
${TDIR}/bin/node addUser.js -c ${TDIR}/etc/config.ini admin "Admin" admin -admin

echo "[OK]"
