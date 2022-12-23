# Flash Windows 11 ISO to pendrive on Linux

This script based on [this tutorial](https://nixaid.com/bootable-usb-windows-linux/) created by [Andy](https://nixaid.com/author/andy/)

## Using script
1. Download [Win11 iso](https://www.microsoft.com/software-download/windows11)
2. Plug in a pendrive
	* Find your pendrive name `lsblk` (This should be something like `/dev/sdb`)
3. Run script: `sudo ./flash.sh <DEVICE> <ISO_PATH>`
	* Example: `sudo ./flash.sh /dev/sdb ~/Downloads/Win11_22H2_Polish_x64v1.iso`

>:warning:**_WARNING:_**  Once you accept it, the <DEVICE\> will be wiped

4. Type `y`, when script ask for permission

