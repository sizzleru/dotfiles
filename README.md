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

## Packages (i.e. bloat)

### Applications

- `bash` `git` (essentials baby)
- `vivaldi`

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
```
