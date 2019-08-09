archlinux-setting.md
====================

# making archlinux install usb

- `wipefs --all /dev/sdb`

- `dd bs=4M if=archlinux.iso of=/dev/sdb status=progress && sync`

# system install

- EFI check : `ls /sys/firmware/efi | grep efivars`

- Internet check : `ping -c 2 archlinux.org`
    - `wifi-menu`

- `timedatectl set-ntp true`

- Partitioning : `gdisk /dev/sda`
    - EFI section : `EF00`
    - Linux swap : `8200`
    - filesystem : `8300`
    - `o` `n` `p` `w`

- Format
    - `mkfs.vfat -F32 /dev/sda1`
    - `mkfs.ext4 /dev/sda3`

- Making swap drive
    - `mkswap /dev/sda2`
    - `swapon /dev/sda2`

- Mount
    - `mount /dev/sda3 /mnt`
    - `mkdir /mnt/boot`
    - `mount /dev/sda1 /mnt/boot`

- Packages
    - Mirror list : `vim /etc/pacman.d/mirrorlist`
    - `pacstrap /mnt base base-devel vim`

- `genfstab -U /mnt >> /mnt/etc/fstab`

- Entering system : `arch-chroot /mnt`

- `ping`

- `passwd`

- Locale
    - `vim /etc/locale.gen`
    - `locale-gen`
    - `echo LANG=en_US.UTF-8 > /etc/locale.conf`
    - `export LANG=en_US.UTF-8`

- Local setting
    - `echo HOSTNAME > /etc/hostname`
    - `vim /etc/hosts`
    - `ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime`
    - `hwclock --systohc --utc`

- User Add
    - `useradd -m -g users -G wheel -s /bin/bash bjk`
    - `passwd bjk`
    - `visudo`

- Boot loader (grub)
    - `pacman -Syu`
    - `pacman -S grub efibootmgr`
    - `grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=arch --recheck`
    - `grub-mkconfig -o /boot/grub/grub.cfg`

- `exit`

- `umount -R /mnt`
