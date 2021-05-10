1. useradd -m samael
2. passwd samael
3. usermod -aG wheel,audio,video,storage samael
4. EDITOR=vim visudo
5. pacman -Syu xorg nvidia nvidia-settings
