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
- `git-delta` (when less just isn't cutting it anymore)
- `gvim` (`vim` didn't support clipboarding)
- `yazi` `ffmpeg` `ffmpegthumbnailer` `p7zip` `jq` `poppler` `fd` `ripgrep` `fzf` `zoxide` `resvg` `imagemagick` `wl-clipboard` `ueberzugpp`


### Application setups

#### yazi

```
ya pkg add dedukun/bookmarks
```
