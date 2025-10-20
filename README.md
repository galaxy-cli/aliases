# binsync

A simple Bash script to synchronize and update personal Bash scripts and executables from a source directory to your local `~/.local/bin` directory.

---

## Overview

`binsync` is a lightweight, personal utility designed to help you keep your frequently used Bash scripts and binaries in sync between your development folders and your local binary directory (`~/.local/bin`).

It recursively scans a specified source directory for files, compares each against files of the same name in the destination directory, and updates the destination files only if they differ. This ensures your scripts are always up to date without unnecessary copying.

---

## Features

- Recursively searches the source directory for all files.
- Compares files by content before copying, updating only changed files.
- Preserves filenames and directory structure relative to destination.
- Easy to customize for different source and destination paths.
- Lightweight and fast — no dependencies outside standard Unix utilities.

---

## Prerequisites

- Unix-like operating system (Linux, macOS, etc.)
- `bash` shell
- Standard utilities: `find`, `cmp`, `cp`

---

## Installation

1. Clone this repository or download the `binsync.sh` script.

2. Make the script executable:

`chmod +x binsync.sh`

3. Edit the script to set your source directory path:
```
src_dir="$HOME/Scripts" # or your preferred source directory
dst_dir="$HOME/.local/bin"
```
---

## Usage

Run the script to synchronize your scripts:

`./binsync.sh`

This will:

- Search for all files under the source directory.
- For each file, find matching filename(s) in the destination directory.
- Copy and overwrite only if the source file differs from the destination.

Sample output:

`Updated /home/user/.local/bin/myscript.sh with /home/user/Scripts/myscript.sh`

---

## Configuration

- **`src_dir`**: The root folder containing your personal or development scripts.
- **`dst_dir`**: The local bin directory where scripts are updated (usually `$HOME/.local/bin`).

Feel free to adjust these variables inside the script to match your workflow.

---

## Example

Set your source directory inside the script, then run
`./binsync.sh`

This will keep your local bin directory up to date with edits in your scripts directory.

---

## Why `binsync`?

This script helps automate the tedious task of manually copying updated scripts to your bin folder. Especially useful if you regularly develop a suite of personal utilities and want a quick way to keep your working environment synchronized.

---

## Troubleshooting

- **Permission issues**: Ensure you have read/write permissions on both source and destination directories.
- **No output**: Confirm `src_dir` and `dst_dir` are set correctly and contain files.
- **File comparison issues**: The script uses `cmp` to compare files. Ensure it's available on your system.

---

## License

This project is licensed under the MIT License. See the LICENSE file for details.

---

## Author & Contact

**galaxy-cli**

GitHub: [https://github.com/galaxy-cli/binsync](https://github.com/galaxy-cli/binsync)
