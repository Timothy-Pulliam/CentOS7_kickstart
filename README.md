# Warning!
These kickstart scripts will delete the data on your disks. Only use them if you
do not care about your data.

# minimal_kickstart.cfg
Used to kickstart a minimal headless server. As its name implies it has minimal functionality.
I took this kickstart file straight from a minimal installation. The only change
I made was to add 'clearpart --all --initlabel' to the partition section to allow
installation to clear any existing partition information.


# rhel7_kickstart.cfg
Includes a post section for updating the system, as well as adding a user's SSH keys
allowing them password-less SSH into the machine upon first boot. The user need only
add their public SSH key into the kickstart file where prompted. You may need to
adjust disk partition information to suite your needs.

## Instructions for how to kickstart
During GRUB prompt for installation or test, press "TAB". Then append the following to the kernel parameters:
ks=https://raw.githubsercontent.com/Timothy-Pulliam/CentOS7_kickstart/master/rhel7_kickstart.cfg
