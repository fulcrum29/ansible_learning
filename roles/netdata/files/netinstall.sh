#!/bin/bash
netdata -v
ex_status=$?


if [ $ex_status != 0 ]
then

  bash <(curl -Ss https://my-netdata.io/kickstart.sh) --dont-wait

else
  echo "netdata installed"
  exit 0

fi
