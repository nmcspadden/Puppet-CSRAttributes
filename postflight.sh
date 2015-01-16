#!/bin/bash

serial=`system_profiler SPHardwareDataType | awk '/Serial/ {print $4}'`
virtual=`facter virtual'`

sed -e "s/mySerialNumber/$serial/" -i .yaml /etc/puppet/csr_attributes.yaml
sed -e "s/facter_virtual/$virtual/" -i .yaml /etc/puppet/csr_attributes.yaml