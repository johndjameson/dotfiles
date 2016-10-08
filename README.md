Dotfiles
========

Shell configuration for a Vim and Sass lovin' front-end developer.

Symlinks
--------

### Sublime Text

With Sublime Text installed via Brew Cask, use the following command to set up a
symbolic link to its packages:

```shell
ln -s ~/.dotfiles/sublime-text/Packages/ /Users/john/Library/Application\ Support/Sublime\ Text\ 3/Packages
```

Non-Cask Apps
-------------

[Craft][craft]

Miscellaneous
-------------

Run these after `brew install` on a fresh OS X:

```shell
brew services start redis
xcode-select --install
```

Sources
-------

Based on the dotfiles of:

- [Drew Barontini][drew]
- [Ben Orenstein][ben]
- [Nicolas Gallagher][necolas]
- [Mathias Bynens][mathias]
- [Harry Roberts][harry]
- [thoughtbot][thoughtbot]


[ben]: https://github.com/r00k/dotfiles
[craft]: https://s3.amazonaws.com/www-assets.invisionapp.com/labs/craft/manager/CraftInstaller.zip
[drew]: https://github.com/drewbarontini/dotfiles
[harry]: https://github.com/csswizardry/dotfiles
[mathias]: https://github.com/mathiasbynens/dotfiles
[necolas]: https://github.com/necolas/dotfiles
[thoughtbot]: https://github.com/thoughtbot/dotfiles
