#!/usr/bin/env zsh

function zaw-src-rubygem() {
	local space=$'\uf116'
	local ruby=$'\ue23e'
	local l=`gem search -q --no-versions`
    candidates=(`echo $l`)
    cand_descriptions=(`echo $l | sed "s/^/${ruby}${space}/g"`)
    actions=(zaw-src-rubygem-install zaw-src-rubygem-uninstall)
    act_descriptions=("install" "uninstall")
}

function zaw-src-rubygem-install() {
    BUFFER="gem install $1"
    zle accept-line
}

function zaw-src-rubygem-uninstall() {
    BUFFER="gem uninstall $1"
    zle accept-line
}

zaw-register-src -n rubygem zaw-src-rubygem


