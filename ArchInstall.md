1. useradd -m samael
2. passwd samael
3. usermod -aG wheel,audio,video,storage samael
4. EDITOR=vim visudo
5. pacman -Syu xorg nvidia nvidia-settings git pulseaudio pavucontrol firefox
6. Install yay
7. Uncomment color in /etc/pacman.conf
8. pacman -Syu ttf-font-awesome
9. yay -Syu nerd-fonts-complete
10. Install WM/DE then Display Manager
11. sudo nvidia-settings
12. pacman -Syu zsh
13. chsh -s /usr/bin/zsh
14. zsh
15. Install oh my zsh
16. Copy over zsh profile
