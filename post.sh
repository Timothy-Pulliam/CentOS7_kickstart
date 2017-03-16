#!/bin/bash

# This is the BASH script which is executed as part of the %post section of the cis_rhel7.cfg
# kickstart file. This script will be executed after all packages have been installed

# Disable Unused Filesystem Types
# Reason: Removing the support for unneeded filesystem types reduces the attack surface.
# 	  Below are some uncommon filesystem types

# Removing modules for unused filesystems
modprobe -r -v cramfs freevxfs jffs2 hfs hfsplus squashfs udf 
# The following lines prevent the uneeded filesystem modules from being loaded
# by other modules as dependencies
echo "install cramfs /bin/false" >> /etc/modprobe.d/cis_fs.conf
echo "install freevxfs /bin/false" >> /etc/modprobe.d/cis_fs.conf
echo "install jffs2 /bin/false" >> /etc/modprobe.d/cis_fs.conf
echo "install hfs /bin/false" >> /etc/modprobe.d/cis_fs.conf
echo "install hfsplus /bin/false" >> /etc/modprobe.d/cis_fs.conf
echo "install squashfs /bin/false" >> /etc/modprobe.d/cis_fs.conf
echo "install udf /bin/false" >> /etc/modprobe.d/cis_fs.conf


