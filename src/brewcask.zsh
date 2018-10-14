#!/usr/bin/env zsh

[[ $OSTYPE != *darwin* ]] && return

function zaw-src-brewcask() {
    local space=$'\uf116'
    local package=$'\uF487'
    local l=`brew search --casks 2>/dev/null`
    candidates=(`echo $l`)
    cand_descriptions=(`echo $l | sed "s/^/${package}${space}/g"`)
    actions=(zaw-src-brewcask-install zaw-src-brewcask-uninstall zaw-src-brewcask-reinstall zaw-src-brewcask-info zaw-src-brewcask-home)
    act_descriptions=("install" "uninstall" "reinstall" "info" "home")
}

function zaw-src-brewcask-install() {
    BUFFER="brew cask install $1"
    zle accept-line
}

function zaw-src-brewcask-uninstall() {
    BUFFER="brew cask uninstall $1"
    zle accept-line
}

function zaw-src-brewcask-reinstall() {
    BUFFER="brew cask reinstall $1"
    zle accept-line
}

function zaw-src-brewcask-info() {
    BUFFER="brew cask info $1"
    zle accept-line
}

function zaw-src-brewcask-home() {
    BUFFER="brew cask home $1"
    zle accept-line
}

zaw-register-src -n brewcask zaw-src-brewcask
