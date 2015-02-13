# Q-Centrix Setup

These are a set of scripts used to set up new developers
at [Q-Centrix](http://q-centrix.com) on OS X machines.

## Before Installation

* [Ensure file-system encryption is on.](http://support.apple.com/kb/ht4790)
* [Install Xcode command line tools.](http://railsapps.github.io/xcode-command-line-tools.html)
* [Set up an SSH key with Github](https://help.github.com/articles/generating-ssh-keys)

## Installing

Fork this repo, [by following these
instructions](https://help.github.com/articles/fork-a-repo).

Then follow these instructions replacing ``<<YOUR NAME`` with your Github
username.

```bash
git clone git@github.com:<<YOUR NAME>>/dotfiles.git ~/.dotfiles
gem install rake
rake dotfiles:bootstrap
```

# Tmux (optional)

## Before Installation

* [Map caps lock to Control (keyboard > modifier keys)](http://teohm.com/blog/2012/04/08/mac-tips-use-caps-lock-as-control-key/)
* [Install Java JDK for OS X](http://www.oracle.com/technetwork/java/javase/downloads/index.html) ([instructions](http://docs.oracle.com/javase/7/docs/webnotes/install/mac/mac-jdk.html))
* [Get the set of SSH keys of your fellow
employees](mailto:nshook@q-centrix.com?Subject=keys%20please)
* [Set laptop up for remote sharing, and add your host to wemux](https://github.com/zolrath/wemux#host-mode)

## Installing

* Follow the instructions above for installation
```bash
rake dotfiles:plugins
rake dotfiles:symlink
```

## Usage

To start a new session:

```bash
work
```

To connect to another person's session:

```bash
ssh <user>@<ip>
wemux client pair
```

To leave a session (but keep it running in the background)

```bash
detach
```

## Updating

TODO: To update the dotfiles, run ``rake dotfiles:update``.

## License

Copyright 2014-2015, Q-Centrix. [MIT License](http://opensource.org/licenses/MIT)
