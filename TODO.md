# Todo:

- [ ] If installed, disable zoom miniviewer
``` bash
nano ~/.config/zoomus.conf
set enableMiniWindow=false
```
- [ ] install latest virtualbox from oracle (for 24.04)
- [ ] Firefox Smooth scrolling configs

``` bash
MOZ_USE_XINPUT2=1 | sudo tee /etc/profile.d/use-xinput2.sh
```

- [ ] Fix KolourPaint theme by setting it to light

``` bash
flatpak override --user --env=GTK_THEME=Adwaita:light org.kde.kolourpaint
```
- [ ] Keyboard shortcuts for Cinnamon 

``` bash
fullscreen -mode     --> ALT + F
gnome-system-monitor --> CTRL + SHIFT + ESC
nemo                 --> CTRL + ALT + N
firefox              --> CTRL + ALT + F
chromium             --> CTRL + ALT + C
code                 --> CTRL + ALT + V
spotify-client       --> CTRL + ALT + S
discord              --> CTRL + ALT + D
```

- [ ] Change default save screenshot location to ~/Documents/Screenshots
- [ ] Attach Google Drive storage
- [ ] Create directory ~/Documents/Repos and create an alias on ~/Desktop
- [ ] Set specific Desktop wallpaper (single photo or slideshow)
- [ ] Fix nemo right click menu to remove 'Delete' and add 'Make Alias'
