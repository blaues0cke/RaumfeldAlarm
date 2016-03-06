# Raumfeld alarm clock

-

This is just a small script to make a raspberry pi or any other linux based system wake you up with some music. I am kinda lazy, so this script can only play reggae by default, you have to modify it on your own to play your own music.

### Installation

Just unzip all the files to `/usr/raumfeld/`. To install the crontab, just type:

    sudo /usr/raumfeld/install.sh

### Config

Please modify the `/usr/raumfeld/config.cfg` by entering the ip address of your host device.

### Alarms

To set alarms, just modify `/usr/raumfeld/crontab.sh`. You can use the following parameters:

	*     *     *     *     *  sh /usr/raumfeld/wake-up.sh
	-     -     -     -     -
	|     |     |     |     |
	|     |     |     |     +----- Day of week (0 = sunday)
	|     |     |     +----------- Month (1 - 12)
	|     |     +----------------- Day (1 - 31)
	|     +----------------------- Hour (0 - 23)
	+----------------------------- Minute (0-59)
	
To make you changes take effect, just re-run the installation script.