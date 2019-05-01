## How To Compile TWRP For Jeter ##
------------------

Sync Omni Repo

First you need to download and sync the omni source
	
		repo init -u git://github.com/omnirom/android.git -b android-7.1
		repo sync
	

## Clone Cedric twrp repo into your working folder ##
---------------

From a terminal prompt inside your working folder

	git clone https://github.com/jeterdevelopment/android_device_motorola_jeter -b twrp-7.1 device/motorola/jeter
	

## Clone other required repos ##
---------------

	git clone https://github.com/LineageOS/android_device_qcom_common -b cm-14.1 deivce/qcom/common
	
	
## Start the build ##
---------------
Type the following in a terminal prompt inside from inside the root of your working folder

	source build/envsetup.sh
	lunch
	select omni_jeter-eng
	make recoveryimage -j$(nproc --all)
	
	
## Flashing the recovery ##
---------------
The recovery will be outputted to the following folder

	out/target/product/jeter/recovery.img
	
Assuming you have fastboot all setup put your phone into bootloader mode and type the following in a terminal prompt within the folder containing the recovery file - or you can drag and drop the file into the terminal window to auto complete the path
	
	fastboot flash recovery recovery.img
