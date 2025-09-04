# Dotfiles

Personal configuration files for macOS development environment. Managed with [GNU Stow](https://www.gnu.org/software/stow/) for easy deployment and maintenance.

## Structure

```
dotfiles/
├── .backup/           # System snapshots and backups
├── git/               # Git configuration  
├── gnupg/             # GPG configuration
├── ideavim/           # IdeaVim configuration
├── iterm2/            # iTerm2 themes and settings
├── karabiner/         # Karabiner-Elements key mappings
├── nvim/              # Neovim configuration
└── zsh/               # Zsh shell configuration
```

## Quick Setup

1. **Clone the repository:**
   ```bash
   git clone git@github.com:jarreskng/dotfiles.git ~/Dotfiles
   ```

2. **Install and deploy configs:**
   ```bash
   cd ~/Dotfiles
   stow -vR -t "$HOME" */
   ```

3. **Restore system packages:**
   ```bash
   brew bundle --file=.backup/snapshots/Brewfile
   ```

## Prerequisites

- **macOS** (tested on latest versions)
- **Git** - version control
- **Homebrew** - package manager
- **GNU Stow** - symlink farm manager

Install prerequisites:
```bash
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Stow
brew install stow
```

## Features

### Shell Environment

- **Zsh** with custom prompt inspired by Agnoster
- **XDG Base Directory** compliance
- **GitHub Light** color scheme throughout
- **Vim mode** with visual indicators

### Development Tools

- **Neovim** with Lazy.nvim plugin manager
- **Git** with SSH-first configuration
- **Docker** with custom daemon settings
- **GPG** with proper key management

### System Integration

- **Karabiner-Elements** for keyboard customization
- **iTerm2** with matching color themes
- **IdeaVim** for JetBrains IDEs

## Configuration Highlights

- **CapsLock → Control** and **Return as Control** when held
- **Tilde/Backtick swap** for better programming experience  
- **XDG compliance** - configs in `~/.config`, data in `~/.local/share`
- **GitHub Light theme** - consistent across terminal, editor, and tools

## Management Commands

```bash
# Deploy all configurations
stow -vR -t "$HOME" */

# Deploy specific package
stow -vR -t "$HOME" nvim

# Remove configurations  
stow -vD -t "$HOME" */

```

## Customization

1. **Fork this repository**
2. **Modify configurations** in respective directories
3. **Test with stow** before committing

## Notes

- Files starting with `.` are automatically ignored by Stow
- See `.stow-local-ignore` for additional ignored patterns
- All configurations follow XDG Specification where possible

---

*These dotfiles are tailored for my personal development workflow. Feel free to use as inspiration for your own setup.*
