#system timezone
sudo timedatectl set-timezone Asia/Kolkata

#uodate package
sudo pacman -Syy

#basic drivers and sessions
sudo pacman -S --noconfirm  xorg xorg-xinit xf86-video-intel nvidia-settings nvidia-prime nvidia nvidia-utils sddm sddm-kcm plasma plasma-desktop plasma-wayland-session plasma-wayland-protocols bluez power-profiles-daemon encfs powerdevil wpa_supplicant konsole intel-ucode git

#audio
sudo pacman -S --noconfirm pipewire pipewire-alsa pipewire-audio pipewire-jack pipewire-media-session qpwgraph pipewire-zeroconf

#paru aur helper
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
cd ..


#application
sudo pacman -S --noconfirm yakuake kde-gtk-config ark dolphin dolphin-plugins gwenview kdeconnect neofetch  neovim packagekit-qt5 partitionmanager spectacle kate vlc firefox qbittorrent gimp bpytop bitwarden ufw reflector avahi kcalc xdg-utils xdg-user-dirs bash-completion bash-language-server  	openssh kamoso kdenlive kdegraphics-thumbnailers kimageformats libheif qt5-imageformats kdesdk-thumbnailers ffmpegthumbs taglib variety okular kvantum android-tools appmenu-gtk-module libreoffice-fresh

paru -S --noconfirm resvg raw-thumbnailer kde-thumbnailer-apk xdman protonvpn google-chrome systemd-kcm kcm-grub2-git kio-admin

echo "exec startkde" >> ~/.xinitrc
sudo ufw allow 1714:1764/udp
sudo ufw allow 1714:1764/tcp
sudo systemctl enable sddm
sudo systemctl enable reflector.timer
sudo systemctl enable power-profiles-daemon.service
sudo systemctl enable avahi-daemon
sudo systemctl enable bluetooth