# Ashley's dotfiles

## Bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```bash
xcode-select --install
```

2. Clone repo into new hidden directory.

```bash
git clone https://github.com/ashley-koh/dotfiles.git ~/.dotfiles
```

3. Run install script that generates symlinks to use the dotfiles

```bash
chmod +x ./install.sh && ./install.sh
```
