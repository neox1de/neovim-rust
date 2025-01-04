# neovim-Rust

## Overview

This repository provides a Neovim configuration tailored for Rust developers. It includes useful keybindings and plugins to enhance your Rust development experience.

## Installation

To install the Neovim configuration, simply run the following command in your terminal:

```sh
curl -sSL https://raw.githubusercontent.com/neox1de/neovim-rust/master/setup.sh | sh -s
```

Alternatively, you can clone the repository and copy the configs folder to `.config/nvim`:

```sh
git clone https://github.com/neox1de/neovim-rust.git
cp -r neovim-rust/configs ~/.config/nvim
```

## Keybindings

- Screenshot Tool
  - `<leader>`ss: Copy a screenshot of the entire code to the clipboard
- Rust
  - `<leader>`rr: Run the Rust project with "cargo run"
- Debugger (DAP)
  - ``<leader>``dl: Step into
  - `<leader>`dj: Step over
  - `<leader>`dk: Step out
  - `<leader>`dc: Continue
  - `<leader>`db: Toggle breakpoint
  - `<leader>`dd: Set conditional breakpoint
  - `<leader>`de: Terminate debugging
  - `<leader>`dr: Run last debug session
  - `<leader>`dt: Testables (RustLsp)
- Avante
  - `<leader>`aa: Avante Ask
  - `<leader>`ae: Avante Edit (Visual Mode)
- NvimTree
  - `<leader>`e: Toggle the NvimTree file explorer
  - `<leader>`o: Focus the NvimTree file explorer

## Usage

1. Install the configuration using the provided command.
2. Open Neovim and start coding in Rust.

## License

This project is not licensed. You can use it however you like.
