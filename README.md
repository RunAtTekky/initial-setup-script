# Initial Setup Script for MacOS setup
Use `./install-all.sh`

It installs the following:
- Homebrew (if not installed)
- Packages in './curr.conf'
- Dotfiles from [here](https://github.com/runattekky/dotfiles/tree/macos)
- oh-my-zsh with plugins
- My [NVIM config](https://github.com/runattekky/kickstart-modular.nvim/tree/macos)
- Aerospace (Window Manager)

## TODO:
I will be creating an init.sh similar to [runat.xyz/init.sh](https://runat.xyz/init.sh)

So that I can run a command like this
```bash
bash <(curl -fsSL https://runat.xyz/init.sh)
```

Just like I do on my [Arch setup](https://github.com/runattekky/initial-setup-script/#initial-setup-script)
