# Display complete device hierarchy
devtree

# Show all devices in system
devices

# List drivers with detailed names
drivers -l eng

dblk blk0 0 1
dblk blk0 1 1

echo "Inspecting Block Devices..."
echo " "
echo "--- BLK0 Info ---"
dh -d blk0
echo " "
echo "--- BLK1 Info ---"
dh -d blk1
echo " "
echo "--- BLK2 Info ---"
dh -d blk2
echo " "
dh -d blkd
echo " "
dh -d sdcc
echo " "
dh -d sdcc2
echo "If you see 'HD(Part...)' in the text, it is a partition."
echo "If you see only 'eMMC' or 'Sdcc', it is the main disk."


ls BLK0:
ls BLK1:
ls BLK2:
ls BLK3:
ls BLK4:
ls BLK5:
ls BLKD:

dh -d SdccDxe
dh -d SdccDxe.efi
dh -d FS0:\SdccDxe.efi
dh -d FS0:\SdccDxe

ls FS0:
ls FS1:

#load FS0:\MsmSdMmcDxe.efi

dmpstore BootOrder
dmpstore BootCurrent


reset

