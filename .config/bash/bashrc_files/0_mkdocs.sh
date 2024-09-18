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

function blog-update() {
    FILE="$(find ${XDG_DOCUMENTS_DIR:-${HOME}/Documents}/blog/posts/ -type f | fzf -e)" || return 1
    TEMP_FILE="$(mktemp)"
    sed -E "s/updated: ([0-9]|-)+/updated: $(date +'%Y-%m-%d')/g" "${FILE}" > "${TEMP_FILE}"
    mv "${TEMP_FILE}" "${FILE}"
    unset FILE TEMP_FILE
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
    echo '## References' >> "${FILE}"
    echo '' >> "${FILE}"
    echo ' - Reference 1: [Reference](reference_link)' >> "${FILE}"

    unset FILE
    unset TITLE
    unset DESCRIPTION
}

function blog-finish() {
    FILE="$(find ${XDG_DOCUMENTS_DIR:-${HOME}/Documents}/blog/posts/ -type f | fzf -e)" || return 1
    TEMP_FILE="$(mktemp)"
    sed -E "s/draft: true/draft: false/g" "${FILE}" > "${TEMP_FILE}"
    mv "${TEMP_FILE}" "${FILE}"
    unset FILE TEMP_FILE
}

function blog-open() {
    FILE="$(find ${XDG_DOCUMENTS_DIR:-${HOME}/Documents}/blog/posts/ -type f | fzf -e)" || return 1
    TEMP_FILE="$(mktemp)"
    sed -E "s/draft: false/draft: true/g" "${FILE}" > "${TEMP_FILE}"
    mv "${TEMP_FILE}" "${FILE}"
    unset FILE TEMP_FILE
}
