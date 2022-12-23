# Burn Windows 11 ISO on pendrive under Linux

This script based on [this tutorial](https://nixaid.com/bootable-usb-windows-linux/) created by [Andy](https://nixaid.com/author/andy/)

## Using the script
1. Download [Win11 iso](https://www.microsoft.com/software-download/windows11)
2. Connect the pendrive
	* Find the name of your pendrive with `lsblk` command (It should be something like `/dev/sdb`)
3. Run the script: `sudo ./flash.sh <DEVICE> <ISO_PATH>`
	* Example: `sudo ./flash.sh /dev/sdb ~/Downloads/Win11_22H2_Polish_x64v1.iso`

>:warning:**_WARNING:_**  Once accepted, the data on the <DEVICE\> will be erased

4. Type `y`, when script ask for permission

