date_utc=$(date +%Y_%m_%d_%H_%M)
echo $date_utc
filename=${date_utc}_SDCardBackup.img
echo $filename
sudo dd if=/dev/mmcblk0 of=/home/pi/hdd/SD_card_backups/images/$filename
pigz -9 /home/pi/hdd/SD_card_backups/images/$filename
#rm $(ls -lt /home/pi/hdd/SD_card_backups/images | tail -1 | awk -F " " '{print $9}')
rm $(ls -t /home/pi/hdd/SD_card_backups/images | tail -1 )
# Should change to path not symlink
