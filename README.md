# rpi-microk8s-playbook
a simple ansible playbook to configure microk8s on Raspberry Pis running Ubuntu Server

## Usage
1. <b>Open the Raspberry Pi imager and insert your SD card</b>
2. <b>Flash the LTS ubuntu version to your SD card</b> <br />
The specific release I used is "Other general purpose OS's" > "Ubuntu" > Ubuntu Server 22.04.5 LTS (64-bit) Server OS with long-term support for RPI zero 2w/3/4/400 <br />
This has only been tested with the above OS on RPI 3/4, it may work with others but I cannot guarantee. Submit an issue if you find bugs.
3. <b>Configure OS </b> <br />
In the imager preconfigure the Pi's hostname, user/password, wireless/internet, and enable SSH allowing password login
4. <b>Write OS to SD card</b>
5. <b>Boot Raspberry Pi</b>
6. <b>SSH into Pi using hostname and save IP address</b> <br />
This step can be skipped if you already have the Pi's IP address
7. <b>On your host machine, download the playbook run the 'run.sh' file</b> <br />
This file will prompt you for the Pi's IP address.
8. <b>Thats all folks!</b> <br />
Once the playbook finishes you should have a RPI with Microk8s ready to go

## Warnings
This is only for development environments and should never be exposed to the internet. SSH host key lookup is disabled, this playbook is not meant to create production instances.
