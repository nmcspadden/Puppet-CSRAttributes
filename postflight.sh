#!/bin/bash

serial=`system_profiler SPHardwareDataType | awk '/Serial/ {print $4}'`
virtual="physical"

if [[ `system_profiler SPHardwareDataType | grep VMware` ]]; then
	virtual="vmware"
elif [[ `system_profiler SPHardwareDataType | grep VirtualBox` ]]; then
	virtual="virtualbox"
elif [[ `system_profiler SPEthernetDataType | grep "/0x1ab8/"` ]]; then
	virtual="parallels"
fi


sed -e "s/mySerialNumber/$serial/" -i .yaml "$3/etc/puppet/csr_attributes.yaml"
sed -e "s/facter_virtual/$virtual/" -i .yaml "$3/etc/puppet/csr_attributes.yaml"