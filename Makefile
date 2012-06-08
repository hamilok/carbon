run:
	qemu-system-x86_64 -cpu core2duo -m 256 -smp 2 -net nic,model=rtl8139,vlan=1,macaddr=52:54:00:12:34:56 -hda build/drive.img

build:
	nasm -I ./src/ -o build/kernel src/main.asm

install: build
	mount -t vfat -o loop,offset=65536 build/drive.img /mnt/usb
	cp build/kernel /mnt/usb/kernel64.sys
	umount /mnt/usb

clean:
	rm -f build/kernel
