# Initial Setup Script for MacOS setup
It installs the following:
- Homebrew (if not installed)
- Packages in './curr.conf'
- Dotfiles from [here](https://github.com/runattekky/dotfiles/tree/macos)
- oh-my-zsh with plugins
- My [NVIM config](https://github.com/runattekky/kickstart-modular.nvim/tree/macos)
- Aerospace (Window Manager)

## How to use
Currently you'd have to go through this tedious process
```bash
# Clone my repo SIUUUU
git clone https://github.com/RunAtTekky/initial-setup-script.git ~/init-setup
# Get innnnnnn
cd ~/init-setup
# Run the master script
./install-all.sh
```

## TODO:
I will be creating an init.sh similar to [runat.xyz/init.sh](https://runat.xyz/init.sh)

So that I can run a command like this
```bash
bash <(curl -fsSL https://runat.xyz/init.sh)
```

Just like I do on my [Arch setup](https://github.com/runattekky/initial-setup-script/#initial-setup-script)
