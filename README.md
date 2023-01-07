# LinuxConfig
Dot files for my **Arch Linux System**, Neovim/Vim and Bash as well as other applications

## About:
- Files located in the `.local/scripts/` directory are shell scripts that can be placed anywhere in `$PATH`
- Scripts in the `.local/scripts/statusbar/` directory are shell scripts that are used in my dwmblocks statusbar

--------------------------

## About Neovim Keybinds
- Neovim / nvim is my main editor with updated plugins and configs etc.
  - All settings for Neovim are in `.config/nvim/init.vim`
	- To install plugins, run Neovim using `nvim` in the terminal, then type: `:PlugInstall`

- `<leader>` is set to the spacebar
- `gcc` comment without selecting line *(/vim-commentary)*
- `gc` comment while line(s) are selected *(/vim-commentary)*
- `F10` creates a new tab in Vim
- `<C-n>` goes to next tab
- `<C-p>` goes to previous tab
- `<leader>c` compiles/interprets opened files in Neovim using the `.local/bin/compiler` script
	- E.g. Markdown file -> .PDF in the same working directory
	- Python -> opens a new st terminal and runs with the python3 interpreter
		- `F9` can run python program inside Vim interface **(Windows Only)**
- `F8` clears highlighting for searches using `:noh` command in Vim
- `F7` Toggles Indent Guide Lines

### LaTeX Neovim Keybinds

- `<leader>c` compiles a regular .tex file
- `<leader>C` compiles a .tex file using **xelatex**
- `<leader>c` compiles a regular .tex file and adds references using **biber**
- `<leader>o` views the compiled pdf of the currently opened **.tex** document in zathura (assuming it's in the same working directory)
- `<leader>O` views the compiled pdf of the currently opened **.md** document in zathura (assuming it's in the same working directory)

## GTK3 Cherry Theme
- Download gtk theme manager: `lxappearance`
- Move theme from `linuxconfig/usr/share/themes/` to `/usr/share/themes/`
- Move icons from `linuxconfig/usr/share/icons/` to `/usr/share/icons/`

### You can also download the GTK3 themes here: 
- GUI Theme: https://www.gnome-look.org/p/1316887/
		
	- Download: `Material-Black-Cherry-3.36_1.9.3.zip`

- Icon Theme: https://www.pling.com/p/1333360/

	- Download: `Cherry-Numix-2021_1.9.3.zip`

## Other folders in this repo
- The `etc/` and `usr/` directories contain files that should be put in their respective folders on your linux system
- These contain settings files for applications
	- The `pacmanPackages/` folder is just a folder with files containing the output of `pacman -Qe` and `pacman -Q`
	- Read linuxconfig/pacmanPackages/README.md for more info

## Wallpapers
- Wallpapers that I use are in the `./personal/pictures/wallpapers/` directory.
- **I DO NOT OWN OR TAKE CREDIT FOR ANY OF THESE WALLPAPERS!**
- I just store them here for my personal use.
