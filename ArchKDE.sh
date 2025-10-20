#system timezone
sudo timedatectl set-timezone Asia/Kolkata

#update package
sudo pacman -Syy

#basic drivers
sudo pacman -S --noconfirm  --needed nvidia-settings
sudo pacman -S --noconfirm  --needed nvidia-prime
sudo pacman -S --noconfirm  --needed nvidia
sudo pacman -S --noconfirm  --needed nvidia-utils
sudo pacman -S --noconfirm  --needed bluez
sudo pacman -S --noconfirm  --needed encfs
sudo pacman -S --noconfirm  --needed powerdevil
sudo pacman -S --noconfirm  --needed power-profiles-daemon
sudo pacman -S --noconfirm  --needed wpa_supplicant
sudo pacman -S --noconfirm  --needed intel-ucode
sudo pacman -S --noconfirm  --needed linux-firmware
sudo pacman -S --noconfirm  --needed linux-firmware-qlogic
sudo pacman -S --noconfirm  --needed linux-firmware-bnx2x
sudo pacman -S --noconfirm  --needed linux-firmware-liquidio
sudo pacman -S --noconfirm  --needed linux-firmware-mellanox
sudo pacman -S --noconfirm  --needed linux-firmware-nfp
sudo pacman -S --noconfirm  --needed linux-firmware-nvidia
sudo pacman -S --noconfirm  --needed linux-firmware-intel

#session and desktop
sudo pacman -S --noconfirm  --needed sddm
sudo pacman -S --noconfirm  --needed sddm-kcm
sudo pacman -S --noconfirm  --needed plasma
sudo pacman -S --noconfirm  --needed plasma-desktop
sudo pacman -S --noconfirm  --needed plasma-wayland-protocols

#audio
sudo pacman -S --noconfirm  --needed pipewire
sudo pacman -S --noconfirm  --needed pipewire-alsa
sudo pacman -S --noconfirm  --needed pipewire-audio
sudo pacman -S --noconfirm  --needed pipewire-pulse
sudo pacman -S --noconfirm  --needed pipewire-jack
sudo pacman -S --noconfirm  --needed pipewire-zeroconf
sudo pacman -S --noconfirm  --needed qpwgraph

#printer
sudo pacman -S --noconfirm  --needed cups
sudo pacman -S --noconfirm  --needed cups-browsed
sudo pacman -S --noconfirm  --needed cups-filters
sudo pacman -S --noconfirm  --needed cups-pdf
sudo pacman -S --noconfirm  --needed system-config-printer

#system application
sudo pacman -S --noconfirm  --needed git
sudo pacman -S --noconfirm  --needed konsole
sudo pacman -S --noconfirm  --needed curl
sudo pacman -S --noconfirm  --needed yakuake
sudo pacman -S --noconfirm  --needed kde-gtk-config
sudo pacman -S --noconfirm  --needed ark
sudo pacman -S --noconfirm  --needed dolphin
sudo pacman -S --noconfirm  --needed dolphin-plugins
sudo pacman -S --noconfirm  --needed kdesdk-thumbnailers
sudo pacman -S --noconfirm  --needed kdegraphics-thumbnailers
sudo pacman -S --noconfirm  --needed kdenetwork-filesharing
sudo pacman -S --noconfirm  --needed gwenview
sudo pacman -S --noconfirm  --needed kdeconnect
sudo pacman -S --noconfirm  --needed partitionmanager
sudo pacman -S --noconfirm  --needed spectacle
sudo pacman -S --noconfirm  --needed kate
sudo pacman -S --noconfirm  --needed haruna
sudo pacman -S --noconfirm  --needed firefox
sudo pacman -S --noconfirm  --needed firewalld
sudo pacman -S --noconfirm  --needed reflector
sudo pacman -S --noconfirm  --needed avahi
sudo pacman -S --noconfirm  --needed kcalc
sudo pacman -S --noconfirm  --needed xdg-utils
sudo pacman -S --noconfirm  --needed xdg-user-dirs
sudo pacman -S --noconfirm  --needed bash-completion
sudo pacman -S --noconfirm  --needed bash-language-server
sudo pacman -S --noconfirm  --needed openssh
sudo pacman -S --noconfirm  --needed kamoso
sudo pacman -S --noconfirm  --needed kdenlive
sudo pacman -S --noconfirm  --needed kimageformats
sudo pacman -S --noconfirm  --needed libheif
sudo pacman -S --noconfirm  --needed qt5-imageformats
sudo pacman -S --noconfirm  --needed ffmpegthumbs
sudo pacman -S --noconfirm  --needed taglib
sudo pacman -S --noconfirm  --needed variety
sudo pacman -S --noconfirm  --needed okular
sudo pacman -S --noconfirm  --needed kvantum
sudo pacman -S --noconfirm  --needed android-tools
sudo pacman -S --noconfirm  --needed appmenu-gtk-module
sudo pacman -S --noconfirm  --needed elisa
sudo pacman -S --noconfirm  --needed libzip
sudo pacman -S --noconfirm  --needed p7zip
sudo pacman -S --noconfirm  --needed unrar
sudo pacman -S --noconfirm  --needed arj
sudo pacman -S --noconfirm  --needed unarchiver
sudo pacman -S --noconfirm  --needed ctags

#Extra application
sudo pacman -S --noconfirm  --needed bpytop
sudo pacman -S --noconfirm  --needed bitwarden
sudo pacman -S --noconfirm  --needed gimp
sudo pacman -S --noconfirm  --needed ktorrent
sudo pacman -S --noconfirm  --needed neovim
sudo pacman -S --noconfirm  --needed libreoffice-fresh
sudo pacman -S --noconfirm  --needed obs-studio
sudo pacman -S --noconfirm  --needed veracrypt

#paru AUR helper
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
cd ..
rm -r paru

#AUR application
sudo paru -S --noconfirm  --needed resvg
sudo paru -S --noconfirm  --needed raw-thumbnailer
sudo paru -S --noconfirm  --needed kde-thumbnailer-apk
sudo paru -S --noconfirm  --needed xdman kio-admin
sudo paru -S --noconfirm  --needed qtscrcpy
sudo paru -S --noconfirm  --needed auto-cpufreq
sudo paru -S --noconfirm  --needed optimus-manager
sudo paru -S --noconfirm  --needed aic94xx-firmware
sudo paru -S --noconfirm  --needed ast-firmware
sudo paru -S --noconfirm  --needed wd719x-firmware
sudo paru -S --noconfirm  --needed upd72020x-fw
sudo paru -S --noconfirm  --needed phonon-mpv
sudo paru -S --noconfirm  --needed neofetch
sudo paru -S --noconfirm  --needed optimus-manager-qt

#ZSH and config
sudo pacman -S --noconfirm  --needed zsh
sudo pacman -S --noconfirm  --needed lsd
sudo pacman -S --noconfirm  --needed zsh-syntax-highlighting
sudo pacman -S --noconfirm  --needed zsh-autosuggestions
sudo pacman -S --noconfirm  --needed zsh-history-substring-search
sudo pacman -S --noconfirm  --needed zsh-completions
sudo pacman -S --noconfirm  --needed starship
sudo paru -S --noconfirm  --needed icons-in-terminal-git
sudo paru -S --noconfirm  --needed zsh-you-should-use

mkdir -p ~/.config/zsh/zsh-history
touch ~/.config/zsh/zsh-history/history

#configure neofetch, starship, zsh
git clone https://github.com/sunnysamantara/config.git
cd config
cp .zshrc ~/.zshrc
mkdir -p ~/.config/neofetch
cp config.conf ~/.config/neofetch/config.conf
cp starship.toml ~/.config/starship.toml
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim
cd ..
rm -r config

#configure firewall
sudo firewall-cmd --zone=public --permanent --add-port=1714-1764/tcp
sudo firewall-cmd --zone=public --permanent --add-port=1714-1764/udp

#start systemd services
sudo systemctl enable sddm
sudo systemctl enable reflector.timer
sudo systemctl enable auto-cpufreq
sudo systemctl enable optimus-manager.service
sudo systemctl enable avahi-daemon
sudo systemctl enable bluetooth

#DRM kernel mode setting
sudo cat /sys/module/nvidia_drm/parameters/modeset
