# sizzleru's dotfiles

and you know I don't give a sh*t when I have a `README.md` on my `~`

---

## Setup

If you also have the balls to have `README.md` and `.git` on your `~` here's how you set it up without funny businesses
```
git init
git remote add origin git@github.com:sizzleru/dotfiles.git
git fetch
git checkout -f main
```

## Hostnames

|Hostname|Operating System|Flavour|naming|description|
|:-:|:-:|:-:|:-:|:-:|
|district|Android|Xiaomi HyperOS|(Kazamatsuri) district|My serious phone|
|dream|Android|Xiaomi HyperOS|(Koutarou's) dream|My sandbox phone <3|
|forest|Windows|Windows 10 Pro|(Kotori's) forest|My hated gaming machine|
|hallway|Linux|Fedora Linux|(endless) hallway|My beefy server rack|
|tree|Linux|Arch Linux|(shizuru's) tree|my beloved daily driver|
|moon|Linux|Arch Linux|(Kagiri's) moon|my overabused server|
|power|Linux|OpenWrt|power (spot)|My sexy router|
|space|Android|Android 13|(Closed) space|My neglected phone|
|tree|Linux|Arch Linux|(shizuru's) tree|my beloved daily driver|

## Packages (i.e. bloat)

### Applications

- `bash` `git` (essentials baby)
- `dunst`
- `trash-cli` (get it before ya regret it mate)
- `fcitx5` `fcitx5-mozc` `fcitx5-gtk` `fcitx5-qt` `fcitx5-configtool`
- `fontconfig` `maplemono-nf` `ttf-nerd-fonts-symbols` `ttf-nerd-fonts-symbols-mono` `ttf-nunito` `ttf-adobe-source-serif-fonts` `woff2-font-awesome` `ttf-twemoji-color` `otf-ipafont` `ttf-nanum` `wqy-zenhei` `terminus-font`
- `git-delta` (when less just isn't cutting it anymore)
- `nwg-look` `catppuccin-gtk-theme-mocha` `catppuccin-cursors-mocha` `tela-circle-icon-theme-pink` `catppuccin-qt5ct-git` `catppuccin-fcitx5-git`
- `hyprland` `xdg-desktop-portal` `xdg-desktop-portal-hyprland`
- `kitty`
- `obs-studio` `catppuccin-obs-theme-git` `pipewire` `wireplumber` `xdg-desktop-portal` `xdg-desktop-portal-wlr`
- `mpvpaper`
- `nvim`
- `tree-sitter-cli` `tree-sitter-haskell` `tree-sitter-lua` `tree-sitter-python` `tree-sitter-bash`
- `bash-language-server` `pyright` `lua-language-server`
- `grim` `slurp` `swappy` `wl-clipboard` (screenshot stack)
- `Microsoft.PowerShell`
- `streamdeckui`
- `thunar-extended` `thunar-archive-plugin` `thunar-media-tags-plugin` `thunar-vcs-plugin` `thunar-volman` `ffmpeg-audio-thumbnailer`
- `gvim` `wl-clipboard` `vim-colors-catppuccin-git` (`vim` didn't support clipboarding)
- `vivaldi`
- `waybar` `playerctl`
- `wofi` `rofimoji` `wl-paste`
- `yazi` `ffmpeg` `ffmpegthumbnailer` `p7zip` `jq` `poppler` `fd` `ripgrep` `fzf` `zoxide` `resvg` `imagemagick` `wl-clipboard` `ueberzugpp`

### Application setups

#### vivaldi

To extract the keybinds and toolbars use
```
jq '.vivaldi.actions' ~/.config/vivaldi/Default/Preferences > ~/.config/vivaldi/keybinds.json
jq '.vivaldi.toolbars' ~/.config/vivaldi/Default/Preferences > ~/.config/vivaldi/toolbars.json
```
you may also need to remove `~/.config/vivaldi/.gitignore` if you want to track changes, just be careful that there is sensitive data in the browser configs.

To import the data in
```
jq '.vivaldi.actions = $actions | .vivaldi.toolbars = $toolbars' \
	--slurpfile actions ~/.config/vivaldi/keybinds.json \
	--slurpfile toolbars ~/.config/vivaldi/toolbars.json \
	~/.config/vivaldi/Default/Preferences > /tmp/Prefs.tmp \
	&& mv /tmp/Prefs.tmp ~/.config/vivaldi/Default/Preferences

#### powershell

```
Install-Module PSReadLine -Force
```
