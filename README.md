# zaw-src-package-managers

Optional sources of [zaw](https://github.com/zsh-users/zaw) for several package managers:

- Package Managers
 - [rubygem](https://rubygems.org/)
 - [pypi](https://pypi.python.org/pypi)
- macOS Only
 - [appstore](https://github.com/mas-cli/mas)
 - [homebrew](https://brew.sh/)
 - [brewcask](https://caskroom.github.io/)

## Installation

If you are using zplug, just add the code below in your .zshrc.

```zsh
zplug "zsh-users/zaw"
zplug "GeneralD/zaw-src-package-managers", on:zsh-users/zaw, defer:2
```

For oh-my-zsh, clone this repo into ~/.oh-my-zsh/custom/plugins and add plugin as below.

```zsh
plugins+=(zaw zaw-src-ghq)
```

## Dependencies

- any nerd-font

This zaw source shows characters of nerd-font.
You can search compatible font with,

```sh
brew cask search nerd-font
```

Then, install and set any nerd-font to your terminal application.

## Licence

DTFPL
