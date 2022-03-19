# Just Nvim
Just nvim is just a personal nvim configuaration. It's not meant to be portable, or to appeal to anyone at all.

### Instalation
Simply clone this repository and move all files to your nvim config folder (e.g. ~/.config/nvim/)

### Optional dependencies
You can check dependencies using :checkhealth

- Language servers of choice. (Have to be added to lua/plugins/lspconfig.lua)
- TreeSitter grammars can pe installed via :TSInstall
- Git - for git stuff
- [Ripgrep](https://github.com/BurntSushi/ripgrep) - For extended telescope functions
- [Fd](https://github.com/sharkdp/fd) - For better file browsing, and for searching repositories
- [Glow](https://github.com/charmbracelet/glow) - For markdown preview
- [Bat](https://github.com/sharkdp/bat) - For better file previews


### Custom Keybindings

| Keybind         | Action                                 |
|:---------------:|:--------------------------------------:|
| `<A-i>`         | Open/Close terminal                    |
| `\xx`           | Toggle Trouble                         |
| `\xd`           | Trouble document diagnostics           |
| `\xw`           | Trouble workspace diagnostics          |
| `\xr`           | Trouble LSP References                 |
| `<A-[>` `<A-]>` | Open previous/next buffer              |
| `<C-t>`         | Open Nvim Tree                         |
| `<A-p>`         | Markdown Glow preview                  |
| `<A-q>`         | Close current buffer                   |
| `!<A-q>`        | Force close current buffer             |
| `[d`  `]d`      | Jump to previous/next diagnostic       |
| `gd`            | Go to definition                       |
| `gD`            | Go to declaration                      |
| `gi`            | Go to implementation                   |
| `ca`            | Code action                            |
| `<space>ca`     | Extended code action menu              |
| `gr`            | Rename                                 |
| `K`             | Show hover doc                         |
| `<space>d`      | Show line diagnostics                  |

