# sizzleru's dotfiles

and you know I don't give a shit when I have a `README.md` on my `~`

---

## Setup

If you also have the balls to have `README.md` and `.git` on your `~` here's how you set it up without funny businesses
```
git init
git remove add origin git@github.com:sizzleru/dotfiles.git
git fetch
git checkout -f main
```
## Environments

- feature/xorg => anything that uses X11 display server (Because my gtx1070ti can't handle wayland)
- feature/git => should be pretty much every environment, because I'm intense nerd on dotfiles

## Hosts

|Hostname|Operating System|Flavour|naming|description|
|:-:|:-:|:-:|:-:|:-:|
|tree|Linux|Arch Linux|(shizuru's) tree|my beloved daily driver|
|moon|Linux|Arch Linux|(kagari's) moon|my overabused server|
|forest|Windows|Windows 10|(kotori's) forest|my neglected kid|

## Packages (i.e. bloat)

### Applications

- `bash`
- `gvim` (vim didn't support clipboarding)
- `git` `git-delta` (when `less` isn't cutting it anymore)
- `xorg-server` `xorg-xinit` `xorg-apps` `xorg-fonts` `dunst` (fuck you nvidia)
- `scrot` `xclip` `xdotool` `dunst`
- `kitty`
- `nemo`

### Visuals

- `fontconfig` (for managing fonts)
- `ttf-iosevka-nerd` (main font)
- `woff2-font-awesome` (more unicode fonts)
- `noto-fonts-emoji` (emoji)
- `otf-ipafont` (Japanese)
- `ttf-nanum` (Korean)
- `wqy-zenhei` (Chinese)
