# CentOS7_kickstart
A General Kickstart File used to speed up and standardize my Redhat distro installs.
=======
# CIS_Kickstart
The following repo contains the scripts and files necessary to kickstart a CentOS 7 system. I hope to eventually make the installation conform to CIS security standards.

https://benchmarks.cisecurity.org/downloads/show-single/?file=rhel7.210

## Files
This repo contains the following files.

* cis_rhel7.cfg = The main kickstart file.
* cis_rhel7_pre.sh = BASH script run during the %pre section of the main kickstart file
* cis_rhel7_post.sh = BASH script run during the %post section of the main kickstart file

## Instructions for how to kickstart
During GRUB prompt for installation or test, press "TAB". Then append the following to the kernel parameters:
ks=https://raw.githubsercontent.com/Timothy-Pulliam/CentOS7_kickstart/master/rhel7_kickstart.cfg

Press enter and the kickstart should automatically run through the Anaconda installer. I will only prompt for the hostname of the system.
