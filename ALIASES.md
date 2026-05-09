# CLI Toolset Overview

## Shell Integration (`.bash_aliases`)
- `aliases`: Quick-access command to edit your shortcut list and immediately refresh your terminal settings.
- `go`: A navigation helper that jumps to folders inside ~/Code and automatically lists files upon arrival.

## Standalone Scripts (`~/.local/bin`)
- `uu`: A safety-first update script for apt and flatpak. It handles root permissions automatically, prevents "half-installed" breakages if interrupted with CTRL+C, and waits for system locks.
- `gitall`: A batch manager for your repositories.
    - `--pull`: Updates every project in your current directory.
    - `--clone`: Mass-clones your entire galaxy-cli ecosystem into a new environment.
- `binlink`: The "glue" script. It scans your ~/Code directory for executable projects and symlinks them to your path so they work as global commands.

## Installation Tip
To get started, save the scripts into your git folder, then run:
```
chmod +x ~/path/to/scripts/*
ln -s ~/path/to/scripts/binlink ~/.local/bin/binlink
binlink
```