#!/usr/bin/env zsh

[[ $OSTYPE != *darwin* ]] && return

function zaw-src-mac-appstore() {
    which mas 1>/dev/null || brew install mas
    local appstore=$'\uE713'
    read-from-minibuffer "mas search: "
    local buf=`mas search ${(Q@)${(z)REPLY}}`
    local cand=`echo $buf | awk '{ print $1 }'`
    local desc=`echo $buf | awk "{ \\$1=\"$appstore\";print }"`
	[[ $? != 0 ]] && return 1
    : ${(A)candidates::=${(f)cand}}
    : ${(A)cand_descriptions::=${(f)desc}}
    actions=('zaw-src-mac-appstore-install' 'zaw-callback-append-to-buffer' 'zaw-callback-replace-buffer')
    act_descriptions=('install' 'append to edit buffer' 'replace edit buffer')
}

function zaw-src-mac-appstore-install() {
    BUFFER="mas install ${(j:; :)@}"
    zle accept-line
}

zaw-register-src -n mac-appstore zaw-src-mac-appstore
