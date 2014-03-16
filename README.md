# ~/.dotfiles

> @ZDroid's dotfiles

These dotfiles are sorted by directories (categories).

## Shell support

These dotfiles are meant to be used with Bash 4+. Also, your shell should
support colors so all commands work well. I'm improving commands so you won't
need the colors support.

These dotfiles aren't for Zsh, but some scripts may work as Zsh accepts Bash
interpreter.

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

You can use `git pullup` as an alias for `git pull upstream CURRENT_BRANCH`.

## Docs

All scripts have docs on the start, just after the `#!/interpreter`.

Example:

```bash
#!/bin/bash
#
# Short and simple description.
#
# Usage:
#
#   $ command ARG REQUIRED
#   $ command ARG [OPTIONAL]
#
# Source: http://example.com
```

Usage legend:

- `NAME`: argument, always written in the upper case
- `[NAME]`: optional argument

## License

MIT &copy; [Zlatan Vasović](https://github.com/ZDroid)
