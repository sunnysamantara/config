#system timezone
sudo timedatectl set-timezone Asia/Kolkata

#uodate package
sudo pacman -Syy

#basic drivers and sessions
sudo pacman -S --noconfirm  xorg xorg-xinit xf86-video-intel nvidia-settings nvidia-prime nvidia nvidia-utils sddm sddm-kcm plasma plasma-desktop plasma-wayland-protocols bluez encfs powerdevil wpa_supplicant konsole intel-ucode git linux-firmware-qlogic linux-firmware-bnx2x linux-firmware-liquidio linux-firmware-mellanox linux-firmware-nfp

#audio
sudo pacman -S --noconfirm pipewire pipewire-alsa pipewire-audio pipewire-pulse pipewire-jack qpwgraph

#application
sudo pacman -S --noconfirm git curl yakuake kde-gtk-config ark dolphin dolphin-plugins gwenview kdeconnect neovim partitionmanager spectacle kate haruna firefox ktorrent gimp bpytop bitwarden ufw reflector avahi kcalc xdg-utils xdg-user-dirs bash-completion bash-language-server openssh kamoso kdenlive kdegraphics-thumbnailers kimageformats libheif qt5-imageformats kdesdk-thumbnailers ffmpegthumbs taglib variety okular kvantum android-tools appmenu-gtk-module libreoffice-fresh elisa libzip p7zip unrar arj unarchiver ctags obs-studio kdenetwork-filesharing

#printer
sudo pacman -S --noconfirm cups cups-browsed cups-filters cups-pdf system-config-printer

#paru aur helper
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
cd ..
rm -r paru

paru -S --noconfirm resvg raw-thumbnailer kde-thumbnailer-apk xdman kio-admin qtscrcpy auto-cpufreq optimus-manager aic94xx-firmware ast-firmware wd719x-firmware upd72020x-fw zsh-you-should-use phonon-mpv neofetch

#ZSH and config
sudo pacman -S --noconfirm lsd zsh zsh-syntax-highlighting zsh-autosuggestions zsh-history-substring-search zsh-completions
mkdir -p ~/.config/zsh/zsh-history
touch ~/.config/zsh/zsh-history/history

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

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

kwriteconfig5 --file kwinrc --group ModifierOnlyShortcuts --key Meta "org.kde.krunner,/App,,toggleDisplay"
echo "exec startkde" >> ~/.xinitrc
sudo ufw allow 1714:1764/udp
sudo ufw allow 1714:1764/tcp
sudo systemctl enable sddm
sudo systemctl enable reflector.timer
sudo systemctl enable auto-cpufreq
sudo systemctl enable optimus-manager.service
sudo systemctl enable avahi-daemon
sudo systemctl enable bluetooth
