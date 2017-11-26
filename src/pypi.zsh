#!/usr/bin/env zsh

function zaw-src-pypi() {
    local space=$'\uf116'
	local python=$'\uE235'
    read-from-minibuffer "pip search: "
    local buf=`pip search ${(Q@)${(z)REPLY}} | egrep '^.+ \(' | awk '{ print $1 }'`
    local desc=`echo $buf | sed "s/^/${python}${space}/g"`
	[[ $? != 0 ]] && return 1
    : ${(A)candidates::=${(f)buf}}
    : ${(A)cand_descriptions::=${(f)desc}}
    actions=('zaw-src-pypi-install' 'zaw-src-pypi-uninstall' 'zaw-src-pypi-download' 'zaw-callback-append-to-buffer' 'zaw-callback-replace-buffer')
    act_descriptions=('install' 'uninstall' 'download' 'append to edit buffer' 'replace edit buffer')
}

function zaw-src-pypi-install() {
    BUFFER="pip install ${(j:; :)@}"
    zle accept-line
}

function zaw-src-pypi-uninstall() {
    BUFFER="pip uninstall ${(j:; :)@}"
    zle accept-line
}

function zaw-src-pypi-download() {
    BUFFER="pip download ${(j:; :)@}"
    zle accept-line
}

zaw-register-src -n pypi zaw-src-pypi
