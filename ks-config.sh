#!/bin/bash

# This script prompts you for network information and fills in the corresponding
# informatino in the rhel7_kickstart.cfg file so a new host can be kickstarted.

cp rhel7_kickstart.cfg ks.cfg
chmod 644 ks.cfg

echo "Static or Dynamic IP address?"
select response in "static" "dynamic"; do
    case $response in
        static )
	    echo -n "IP ADDRESS	:"
	    read ip
	    echo -n "HOSTNAME	:"
      read hostname
      echo -n "DNS1 :"
      read DNS1
      echo -n "DNS2 :"
      read DNS2
      sed -i "s:^network.*:network  --bootproto=static --gateway=$gateway --ip=$ip --netmask=255.255.0.0 --onboot=on --nameserver=$DNS1,$DNS2 --hostname=$hostname --activate:" ks.cfg
      break;;
	dynamic )
	    echo -n "HOSTNAME	:"
	    read hostname
            sed -i "s:^network.*:network --bootproto=dhcp --hostname=$hostname --onboot=on --activate:" ks.cfg
	    break;;
    esac
done
