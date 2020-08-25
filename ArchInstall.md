1. useradd -m samael
2. passwd samael
3. usermod -aG wheel,audio,video,storage samael
4. EDITOR=vim visudo
5. pacman -Syu xorg nvidia nvidia-settings git
6. Install yay
7. Uncomment color in /etc/pacman.conf
8. pacman -Syu ttf-font-awesome
9. yay -Syu nerd-fonts-complete
10. pacman -Syu sddm
11. systemctl enable sddm
12. pacman -Syu plasma-desktop
13. pacman -Syu libdbusmenu-glib
14. pacman -Syu gst-libav gst-plugins-good
15. pacman -Syu konsole dolphin
16. Reboot into plasma
17. sudo nvidia-settings
18. Change to xrender
19. hange single click to double click
20. Mouse Setting to Flat and speed 4
21. pacman -Syu pulseaudio pavucontrol
22. git clone -b KDE https://github.com/Samael0/Linux-Dotfiles.git
23. pacman -Syu firefox
24. pacman -Syu kvantum-qt5
25. pacman -Syu kde-gtk-config
26. Install Theme
27. pacman -Syu zsh
28. chsh -s /usr/bin/zsh
29. zsh
30. Install oh my zsh
31. Copy over zsh profile
