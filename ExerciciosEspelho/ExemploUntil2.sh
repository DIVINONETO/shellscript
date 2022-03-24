#!/bin/bash

until ps aux | grep openvpn -v > /dev/null
do
    echo "Inicie o openvpn..."
    sleep 5
done

echo "Firefox Iniciado"
echo PID: $(pgrep openvpn)