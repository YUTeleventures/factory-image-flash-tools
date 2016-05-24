@echo --------------[ Start flashing YU-OPEN-OS ]------------------
@echo ---------------[ Checking for connected devices ]-------------------
@fastboot devices 
@echo ----------------[ Checking device info ]------------------
@fastboot oem device-info
@echo -------------------[ Unlocking bootloader ]-------------------------
@fastboot oem unlock
@echo ----------------------[ Flashing kernel ]---------------------------
@fastboot flash boot boot.img
@echo ----------------------[ Flashing recovery ]-------------------------
@fastboot flash recovery recovery.img
@echo -------------------[ Flashing system partition ]--------------------
@fastboot flash system system.img
@echo ----------------------[ Flashing userdata ]-------------------------
@fastboot flash userdata userdata.img 
@echo -------------------[ Flashing cache partition ]---------------------
@fastboot flash cache cache.img
@echo ---------------------[ Rebooting device ]---------------------------
@fastboot reboot
@echo -------------------------[ ALL DONE ]-------------------------------

