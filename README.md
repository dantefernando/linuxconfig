# LinuxConfig
Dot files for my **Arch Linux System**, Neovim/Vim and Bash as well as other applications

## About:
- Files located in the `.local/bin/` directory are bash shell scripts that can be placed anywhere in `$PATH`

--------------------------

## About Neovim Keybinds
- Neovim / nvim is my main editor with updated plugins and configs etc.
  - All settings for Neovim are in `~/.config/nvim/init.vim`
	- To install plugins, run Neovim using `nvim` in the terminal, then type: `:PlugInstall`

- `<leader>` is set to the spacebar
- `gcc` comment without selecting line *(/vim-commentary)*
- `gc` comment while line(s) are selected *(/vim-commentary)*
- `F12` goes to next tab
- `F11` goes to previous tab
- `F10` creates a new tab in Vim
- `F9` runs python program inside Vim interface **(Windows Only)**
	- For Linux use `<leader>c` instead
- `F8` clears highlighting for searches using `:noh` command in Vim
- `F7` Toggles Indent Guide Lines
- `<leader>c` Compiles/Runs an interpreter on the file 
	- E.g. Markdown file -> .PDF in the same working directory
	- Python -> opens a new st terminal and runs with the python3 interpreter

## GTK3 Cherry Theme
- Download gtk theme manager: `lxappearance`
- Move theme from `linuxconfig/usr/share/themes/` to `/usr/share/themes/`
- Move icons from `linuxconfig/usr/share/icons/` to `/usr/share/icons/`

### You can also download the GTK3 themes here: 
- GUI Theme: https://www.gnome-look.org/p/1316887/
		
	- Download: `Material-Black-Cherry-3.36_1.9.3.zip`

- Icon Theme: https://www.pling.com/p/1333360/

	- Download: `Cherry-Numix-2021_1.9.3.zip`
