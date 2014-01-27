# ~/.dotfiles

> @ZDroid does dotfiles

These dotfiles are sorted in directories &mdash; categories.

## Bootstrap

1. Fork repository.
2. Clone your fork in `~/.dotfiles`.
3. Navigate to `~/.dotfiles` and run `tool/bootstrap`.

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