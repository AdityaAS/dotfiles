Setting up an environment in a new PC / server from scratch

Code Editing (Theme, Autocomplete, Remote editing, LateX/Markdown Editing, Backup/Sync settings across devices, )
- VS Code (Packages that I use)
  - Theme
    - Materialize
    - Material Theme Icons
    - Community Material Theme
    - Monokai Pro
  - Remote SSH
  - [Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync)
  - Sublime Text Keymap
  - Pytorch Snippets
  - Docker
  - Kubernetes
  - Git Lens
  - LateX workshop
  - Markdown All in One
  - Prettify Json
  - Pylance
  - Remote VS Code
  - YAML

- Sublime Text (Packages that I use)
  - Anaconda
  - Auto Docstring
  - Git Gutter
  - Bracket Highlighter
  - Helium
  - Markdown Preview
  - Materialize
  - SFTP
  - Sidebar Enhancements
  - Sublimerge
  - Synced Sidebar

## Server Settings
- [MOSH](https://mosh.org/)
- [TMUX](https://www.howtogeek.com/671422/how-to-use-tmux-on-linux-and-why-its-better-than-screen/)
  - Other settings at [./tmux_autocomplete](./tmux/.tmux_autocomplete) and [./tmux.conf](./tmux/.tmux.conf)
- [ZSH](https://github.com/ohmyzsh/ohmyzsh/)
  - plugins=(git zsh_reload tmux mosh git-auto-fetch cp kubectl pyenv pylint themes colorize python)
  - Other settings at [./zshrc](./.zshrc)
- IP mappings in `/etc/hosts` so that you never have to remember IP addresses
- [Aliases](./aliases/.bash_aliases) - Includes normal commands (rsync, cp, ls), git commands, docker commands and k8s commands
- [VIM](https://vimsheet.com/)
- [Tmux Resurrect](https://github.com/tmux-plugins/tmux-resurrect)
- [Anaconnda](https://www.anaconda.com/)
- [Virtual Environments](https://realpython.com/python-virtual-environments-a-primer/)
