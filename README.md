# ~/.dotfiles

> @ZDroid does dotfiles

These dotfiles are sorted in directories &mdash; categories.

## Table of contents

* [Shell support](#shell-support)
* [Bootstrap](#bootstrap)
* [Hack](#hack)
* [Docs](#docs)
* [License](#license)

## Shell support

These dotfiles are meant to be used with newer versions of Bash. Also, your
shell should support colors so all commands works well.

These dotfiles aren't for Zsh, but some scripts may work.

## Bootstrap

1. Fork repository.
2. Clone your fork in `~/.dotfiles`.
3. Navigate to `~/.dotfiles` and run `tool/bootstrap`.

## Hack

You can remove what you don't use and add what you do use.

### Update your fork

```bash
$ git remote add upstream https://github.com/ZDroid/dotfiles
$ git pull upstream master
$ git push
```

## Docs

All scripts have docs, on the beginning of script, just after `#!/interpreter`.

Example:

```bash
#!/bin/bash
#
# Short and simple description.
#
# Usage:
#
#   $ mycmd ARG
#   $ mycmd (ARG1|ARG2) (ARG2|ARG3)
#
# Source: http://example.com
```

Usage legend:

* `NAME`: argument, always written in the upper case
* `(NAME|NAME|...)`: allowed argument values (depend on argument before)
* `[NAME]`: optional argument
* `[NAME|NAME]`: optional argument values (depend on argument before)

## License

MIT &copy; [Zlatan Vasović](https://github.com/ZDroid)