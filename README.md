### Unoffical Docker-Container for IP-Symcon 4.2 stable

***

based on Ubuntu 16.04

Volumes:

- /usr/share/symcon
- /var/lib/symcon
- /var/log/symcon
- /root

No Exposes (Ports) use option --net="Host" instead

Example to run image (tested with FS20 and Homematic):

	docker run --name symcon --net="host" \
	-v /mnt/data/@appdata/symcon/share:/usr/share/symcon \
	-v /mnt/data/@appdata/symcon/lib:/var/lib/symcon \
	-v /mnt/data/@appdata/symcon/log:/var/log/symcon \
	-v /mnt/data/@appdata/symcon/root:/root \
	--device /dev/ttyUSB0:/dev/ttyUSB0 \
	blockmove/symcon

[Thread on IP-Symcon Forum](https://www.symcon.de/forum/threads/26294-IP-Symcon-via-Docker-Engine) 
