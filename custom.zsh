################################################################################
# FS
################################################################################
export FS_PATH="${HOME}/fs"
export FS___PATH="${FS_PATH}/_"
export FS____PATH="${FS_PATH}/__"
export FS_BIN_PATH="${FS_PATH}/bin"
export FS_DOCS_PATH="${FS_PATH}/docs"
export FS_REPOS_PATH="${FS_PATH}/repos"
export FS_SCRIPTS_PATH="${FS_PATH}/scripts"
export FS_SHELLS_PATH="${FS_PATH}/shells"
export FS_SHELL_PATH="${FS_SHELLS_PATH}/zsh"
export FS_SHELL_THEMES_PATH="${FS_SHELL_PATH}/themes"
export FS_SHELL_PLUGINS_PATH="${FS_SHELL_PATH}/plugins"

################################################################################
# PATH
################################################################################
export PATH="/usr/local/sbin:${PATH}"
export PATH="${PATH}:${FS_BIN_PATH}"

################################################################################
# SERVICES
################################################################################
# SERVICES: AWS
export AWS_PAGER=jq
# SERVICES: ASDF
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit
compinit

################################################################################
# ALIASES
################################################################################
# alias reload="source ~/.zshrc"
# alias awsacct="aws sts get-caller-identity --query Account --output text"
# alias awsaccti="aws sts get-caller-identity | cat"

################################################################################
# EXECUTE
################################################################################
# eval $(thefuck --alias)
# [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

################################################################################
# SOURCES
################################################################################
function source_if_exists() {
    if [[ ! -f "${1}" ]]; then
        return
    fi

    source "${1}"
    return
}
source_if_exists "${FS_SCRIPTS_PATH}/shell/init"
