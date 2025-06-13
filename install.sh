
#!/usr/bin/env bash

path=$(pwd)
# Verificar Apps

# Idioma/Layout e Data/Hora

# Pastas
# -> Jogos
mkdir ~/Games/
# -> Projetos
# -> Scripts
# -> Configs/DotFiles
# -> Wallpapers

# Instalando
# Base
sudo pacman -S git base-devel

# Yay
git clone https://aur.archlinux.org/yay.git
chown -R $USER:$USER yay-git
cd yay-git
makepkg -si
cd $path

# Xbox Controller Drivers
yay -S xpadneo-dkms-git xone-dkms-git xone-dongle-firmware

# Proton Tools
yay -S protonup-qt protontricks

# Dependencias de SteamTinkerLaunch
sudo pacman -S xdotool xorg-xwininfo yad

# GameMode
sudo pacman -S gamemode

# Nerd Fonts
sudo pacman -S ttf-hack-nerd ttf-meslo-nerd

# PowerLevel10K
fc-cache -f -v
cd ~
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo 'Adicione -> ZSH_THEME="powerlevel10k/powerlevel10k" em ~/.zshrc para selecionar o tema do zsh'
read -p "Aperte Enter quando terminar: " variavel
cd $path
# Programas
sudo pacman -S \
  pacman-contrib \
  nautilus \
  zsh \
  git \
  curl \
  python3 \
  steam \
  lutris \
  wget \
  lsd \
  bat \
  eza \
  fastfetch

# -> Zen Browser
flatpak install --assumeyes flathub app.zen_browser.zen

# -> Wezterm
flatpak install --assumeyes flathub org.wezfurlong.wezterm
# -> VSCode

# -> Lutris
sudo pacman -S --needed wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \
  mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error \
  lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo \
  sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama \
  ncurses lib32-ncurses ocl-icd lib32-ocl-icd libxslt lib32-libxslt libva lib32-libva gtk3 \
  lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader winetricks

# -> Foliate
flatpak install --assumeyes flathub com.github.johnfactotum.Foliate
# -> Calibre
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
# -> Flameshot
sudo pacman -S flasmeshot
# -> DB For SQLite
sudo pacman -S sqlitebrowser
# -> DBeaver
flatpak install --assumeyes flathub io.dbeaver.DBeaverCommunity
# -> Gear Level
flatpak install --assumeyes flathub it.mijorus.gearlever
# -> Tibia
cd ~/Games/
wget https://static.tibia.com/download/tibia.x64.tar.gz
tar -xvzf tibia.x64.tar.gz
cp atalhos ~/Games/
cd $path
# -> Stremio
# -> Android Studio Emulator
# -> Fragments
flatpak install --assumeyes flathub de.haeckerfelix.Fragments
# -> Obsidian
# -> Libre Office
# -> Telegram
flatpak install --assumeyes flathub org.telegram.desktop

# Configs
# OhMyZsh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
# Zsh Plugins
sudo pacman -S zsh-autocomplete zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting
# LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
# fastfetch
cd ~/.config/fastfetch
fastfetch --gen-config
rm config.jsonc
wget https://raw.githubusercontent.com/KernelsAndDragons/ArchPostInstall/refs/heads/main/config.jsonc

# Scripts
# -> update
# -> baixar mangas

# Ajustes
echo '# ALIAS' >>~/.zshrc
echo "alias ls='lsd'" >>~/.zshrc
echo "alias ll='lsd -l'" >>~/.zshrc
echo "alias la='lsd -a'" >>~/.zshrc
echo "alias lla='lsd -la'" >>~/.zshrc
echo "alias cat='bat'" >>~/.zshrc

# Temas
# -> DRACULA