#!/usr/bin/env zsh

[[ $OSTYPE != *darwin* ]] && return

function zaw-src-homebrew() {
    local space=$'\uf116'
    local beer=$'\uF0FC'
    local l=`brew search`
    candidates=(`echo $l`)
    cand_descriptions=(`echo $l | sed "s/^/${beer}${space}/g"`)
    actions=(zaw-src-homebrew-install zaw-src-homebrew-uninstall zaw-src-homebrew-reinstall zaw-src-homebrew-info zaw-src-homebrew-home)
    act_descriptions=("install" "uninstall" "reinstall" "info" "home")
}

function zaw-src-homebrew-install() {
    BUFFER="brew install $1"
    zle accept-line
}

function zaw-src-homebrew-uninstall() {
    BUFFER="brew uninstall $1"
    zle accept-line
}

function zaw-src-homebrew-reinstall() {
    BUFFER="brew reinstall $1"
    zle accept-line
}

function zaw-src-homebrew-info() {
    BUFFER="brew info $1"
    zle accept-line
}

function zaw-src-homebrew-home() {
    BUFFER="brew home $1"
    zle accept-line
}

zaw-register-src -n homebrew zaw-src-homebrew
