gitbh() {
	cd "${HOME}"
	git bh "${1}"
	git unstage
	git restore .gitignore README.md
}
