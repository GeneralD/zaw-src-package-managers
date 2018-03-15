#!/usr/bin/env zsh

function zaw-src-clib() {
    which clib 1> /dev/null || (which brew 1> /dev/null && brew install clib)
    local space=$'\uf116'
    local clang=$'\uE61E'
    local l=`clib search | egrep -F '[39;49;36;49m' | tr -d ' ' | sed 's/\[[0-9;]*m//g'`
    candidates=(`echo $l`)
    cand_descriptions=(`echo $l | sed "s/^/${clang}${space}/g"`)
    actions=('zaw-src-clib-install' 'zaw-src-clib-browse' 'zaw-callback-append-to-buffer' 'zaw-callback-replace-buffer')
    act_descriptions=('install' 'browse' 'append to edit buffer' 'replace edit buffer')
}

function zaw-src-clib-install() {
    BUFFER="clib install ${(j:; :)@}"
    zle accept-line
}

function zaw-src-clib-browse() {
    BUFFER="open https://github.com/${(j:; :)@}"
    zle accept-line
}

zaw-register-src -n clib zaw-src-clib
