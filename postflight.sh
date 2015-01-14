#!/bin/bash

serial=`system_profiler SPHardwareDataType | awk '/Serial/ {print $4}'`
uuid=`system_profiler SPHardwareDataType | awk '/UUID/ {print $3}'`

sed -e "s/mySerialNumber/$serial/" -i .yaml /etc/puppet/csr_attributes.yaml
sed -e "s/myUUIDnumber/$uuid/" -i .yaml /etc/puppet/csr_attributes.yaml