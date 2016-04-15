#!/bin/bash

TDIR=/data/moloch
ES_SOCKET="127.0.0.1:9200"

echo "[-] Wiping ES..."
${TDIR}/db/db.pl ${ES_SOCKET} wipe

read -p "Remove all PCAPs? [y/N] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo "[-] Removing PCAP files..."
  rm ${TDIR}/raw/*.pcap
fi

echo "[OK]"
