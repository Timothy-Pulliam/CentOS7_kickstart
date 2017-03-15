# CIS_Kickstart
The following repo contains the scripts and files necessary to kickstart a CentOS 7 system which conforms to the CIS specification. The specification can be found at the link below

https://benchmarks.cisecurity.org/downloads/show-single/?file=rhel7.210

## Files
This repo contains the following files.

* cis_rhel7.cfg = The main kickstart file.
* cis_rhel7_pre.sh = BASH script run during the %pre section of the main kickstart file
* cis_rhel7_post.sh = BASH script run during the %post section of the main kickstart file
