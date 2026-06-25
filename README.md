# Hyprland minimalistic daily use Theme for Arch Linux

## Preview

https://github.com/user-attachments/assets/4ac1c3bf-4014-40af-83aa-567e6dbbf779

<br>

<p align="center">
  <img src="screenshots/desktop.jpg" width="49%" alt="Desktop"/>
  <img src="screenshots/rofi.jpg" width="49%" alt="Rofi Menu"/>
</p>

<p align="center">
  <img src="screenshots/power.jpg" width="49%" alt="Power Menu"/>
  <img src="screenshots/swaync.jpg" width="49%" alt="Notification Center"/>
</p>

<p align="center">
  <img src="screenshots/windows1.jpg" width="49%" alt="Windows View 1"/>
  <img src="screenshots/windows2.jpg" width="49%" alt="Windows View 2"/>
</p>

## Note
Use **SUPER + `** to switch the special workspace

Use **SUPER + SHIFT + `** to move window to a special workspace

## Quick Setup
To get started, install the required packages. You can run this command:

**Arch Linux**:
```bash
sudo pacman -S --needed hyprland waybar swaync rofi-wayland kitty nautilus file-roller gst-libav ffmpegthumbnailer blueman pavucontrol network-manager-applet grim slurp swappy nwg-look btop fastfetch mpv loupe gnome-calculator mousepad keepassxc qbittorrent flatpak ttf-jetbrains-mono-nerd papirus-icon-theme git base-devel hyprlock python-pywal cava peaclock cmatrix kdenlive yazi duf
```
```bash
yay -S --needed bibata-cursor-theme matugen-bin waypaper wlogout openrgb-git gpu-screen-recorder-ui
```

## How to Install

Back up your current config:

```bash
mv ~/.config/hypr ~/.config/hypr.bak
mv ~/.config/waybar ~/.config/waybar.bak
mv ~/.config/swaync ~/.config/swaync.bak
mv ~/.config/rofi ~/.config/rofi.bak
mv ~/.config/kitty ~/.config/kitty.bak
```

Copy these files to your ~/.config/ folder:

```bash
cp -r hypr waybar swaync rofi kitty cava fastfetch peaclock waypaper wlogout ~/.config/
```

You can move the files and edit them manually

## Customization

- Wallpapers & Avatar: Update the paths in `~/.config/hypr/hyprlock.conf` to point to your image files.
  - background: `~/.config/hypr/assets/background.jpg`
  - avatar: `~/.config/hypr/assets/user.png`
  - (change images in `~/.config/hypr/assets/` folder)

- Monitors: The setup is universal (monitor=,preferred,auto,1).
- Edit `~/.config/hypr/conf/monitor.conf` if you need specific settings.
- Edit `~/.config/hypr/conf/windowrules.conf` to manage window rules.
- Edit `~/.config/hypr/conf/autostart.conf` to manage autostart programs.
- Edit `~/.config/hypr/conf/bind.conf` to manage binds.
- Use `waypaper` to change wallpapers.

## Notes

- If you are using zsh, take the .zshrc file from the zsh folder and place it in your home directory

## Software Requirements

To ensure all window rules and configurations work as intended, the following applications are used in this setup:
Optionally, you can edit the file `~/.config/hypr/conf/windowrules.conf` to match your applications

### Utilities and Applications
* **Blueman**: Bluetooth manager.
  - `sudo pacman -S blueman`
* **Pavucontrol**: Audio volume control.
  - `sudo pacman -S pavucontrol`
* **NM Connection Editor**: Network management.
  - `sudo pacman -S network-manager-applet`
* **OpenRGB**: RGB lighting control.
  - `sudo pacman -S openrgb`
* **Gwenview / Loupe**: Image viewer.
  - `sudo pacman -S gwenview`
  - `sudo pacman -S loupe`
* **MPV**: Video player.
  - `sudo pacman -S mpv`
* **Mousepad**: Text editor.
  - `sudo pacman -S mousepad`
* **Calculator**: GNOME Calculator.
  - `sudo pacman -S gnome-calculator`

## Notes
To use colors in editors based on VS code, you need to install the extension:

![Extension](screenshots/code.jpg)