function prompt_yes() {
    read -rp "${1} [Y/n] " response
    if [[ ! "${response}" =~ ^([yY][eE][sS]|[yY])$ ]] && [[ ! -z "${response}" ]]; then
        return 1
    fi
}

function prompt_no() {
    read -rp "${1} [y/N] " response
    if [[ ! "${response}" =~ ^([yY][eE][sS]|[yY])$ ]] || [[ -z "${response}" ]]; then
        return 1
    fi
}

function blog-cd() {
    cd "${XDG_DOCUMENTS_DIR:-${HOME}/Documents}/blog/posts"
}

function blog-create() {
    if [[ "${#}" -ne 0 ]]; then
        echo 'This function only supports interactive prompt' && return 1
    fi

    FILE="${XDG_DOCUMENTS_DIR:-${HOME}/Documents}/blog/posts/$(date +%s).md"

    read -p 'Enter a title for the post: ' TITLE
    read -p 'Enter a subtitle for the post: ' SUBTITLE
    read -p 'Enter a description for the post: ' DESCRIPTION

    echo '---' > "${FILE}"
    echo 'authors:' >> "${FILE}"
    echo "  - $(id -un)"  >> "${FILE}"

    echo "title: ${TITLE}" >> "${FILE}"
    echo "subtitle: ${SUBTITLE}" >> "${FILE}"
    echo "description: ${DESCRIPTION}" >> "${FILE}"
    echo 'status: new' >> "${FILE}"

    echo 'categories:' >> "${FILE}"
    read -p 'Enter the main category for the post: ' response
    while [[ ! -z "${response}" ]]; do
        echo "  - ${response}" >> "${FILE}"
        read -p 'Enter a category for the post (leave empty to stop): ' response
    done && unset response

    echo 'tags:' >> "${FILE}"
    read -p 'Enter the main tag for the post: ' response
    while [[ ! -z "${response}" ]]; do
        echo "  - ${response}" >> "${FILE}"
        read -p 'Enter a category for the post (leave empty to stop): ' response
    done && unset response

    echo 'date:' >> "${FILE}"
    echo "  created: $(date +'%Y-%m-%d')" >> "${FILE}"
    echo "  updated: $(date +'%Y-%m-%d')" >> "${FILE}"

    if prompt_yes 'Keep as draft?'; then
        echo 'draft: true' >> "${FILE}"
    else
        echo 'draft: false' >> "${FILE}"
    fi

    if prompt_no 'Pin this post?'; then
        echo 'pin: true' >> "${FILE}"
    else
        echo 'pin: false' >> "${FILE}"
    fi
    echo '---' >> "${FILE}"
    echo '' >> "${FILE}"
    echo "# ${TITLE}" >> "${FILE}"
    echo '' >> "${FILE}"
    echo "${DESCRIPTION}" >> "${FILE}"
    echo '' >> "${FILE}"
    echo '' >> "${FILE}"
    echo '[^1] description: link' >> "${FILE}"

    unset FILE
    unset TITLE
    unset DESCRIPTION
}

function blog-edit() {
	find "${XDG_DOCUMENTS_DIR:-${HOME}/Documents}/blog/posts" -maxdepth 1 -type f | \
		fzf --preview 'cat {}' --layout=reverse --bind 'enter:execute(EDITOR='nvim' blog-edit-post {})'
}
