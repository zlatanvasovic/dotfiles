# ~/.dotfiles

> @zdroid's dotfiles

Dotfiles are the shell stuff that makes your system awesome. These are mine.

## Shell support

These dotfiles are meant to be used with Bash 4+. They aren't for Zsh, but some
scripts may work as Zsh accepts Bash interpreter.

If your shell doesn't support colors, don't worry. Your system's color support
will be automatically detected and so decided to use colors or no.

## Bootstrap

1. Fork repository. Maybe you won't need to modify anything, but your needs
might change.
2. Clone the repository to `~/.dotfiles`.
3. Navigate to `~/.dotfiles` and run `tool/bootstrap`.

## Hack

You can remove what you don't use and add what you do use.

### Update your fork

If your fork is outdated, then you should update it.

```bash
$ git remote add upstream https://github.com/zdroid/dotfiles
$ git pull upstream master
$ git push
```

**Tip:** You can use `git pullup` as an alias for
`git pull upstream CURRENT_BRANCH`.

## Documentation

All scripts have documentation on the start, just after the interpreter line
(e.g. `#!/bin/bash`).

Example:

```bash
#!/bin/bash
#
# Short and clear description.
#
# Usage:
#
#   $ command ARG
#   $ command [ARG]
#
# Source: http://example.com
```

Usage legend:

- `ARG`: required argument
- `[ARG]`: optional argument

Arguments may be subcommands, too.

## License

MIT &copy; [Zlatan Vasović](https://github.com/zdroid)
