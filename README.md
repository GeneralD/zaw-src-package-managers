# zaw-src-package-managers

Optional sources of [zaw](https://github.com/zsh-users/zaw) for several package managers:

- Package Managers
 - [rubygem](https://rubygems.org/) (ruby)
 - [pypi](https://pypi.python.org/pypi) (pyhton)
 - [clib](https://github.com/clibs/clib) (C)
- macOS Only
 - [appstore](https://github.com/mas-cli/mas) (Mac App Store)
 - [homebrew](https://brew.sh/) (Mac CUI App)
 - [brewcask](https://caskroom.github.io/) (Mac GUI App)

## Installation

If you are using zplug, just add the code below in your .zshrc.

```zsh
zplug "zsh-users/zaw"
zplug "GeneralD/zaw-src-package-managers", on:zsh-users/zaw, defer:2
```

For oh-my-zsh, clone this repo into ~/.oh-my-zsh/custom/plugins and add plugin as below.

```zsh
plugins+=(zaw zaw-src-package-managers)
```

## Dependencies

- any nerd-font

This zaw source shows characters of nerd-font.
You can search compatible font with,

```sh
brew cask search nerd-font
```

Then, install and set any nerd-font to your terminal application.
