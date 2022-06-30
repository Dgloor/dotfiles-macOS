# MacOS Dotfiles

## Screenshots

## Apps

### Fonts

- Nerd Fonts: Fira Code & JetBrains Mono 

~~~
brew install font-jetbrains-mono-nerd-font font-fira-code-nerd-font
~~~

### CLI

- Alacrity - Terminal emulator
- Zsh
- Starship

~~~
brew install alacritty starship zsh zsh-autosuggestions zsh-syntax-highlighting
~~~

### CLI Utilities

- Autojump 
- Bat 
- Duf
- Lf
- Lsd 
- Mackup - Backup dotfiles
- Macos-trash
- Pfetch 
- Rar
- Rg
- Tree 

~~~
brew install autojump bat duf lf lsd mackup macos-trash pfetch rar rg tree
~~~

### Software Dev

- Neovim 
- Visual Studio Code
- RStudio
- Github CLI
- Lazygit
- XCode
- System color picker

~~~
brew install neovim visual-studio-code
brew install r rstudio openjdk@11
brew install lazygit gh
brew install gcc node yarn llvm pyright deno
npm i -g bash-language-server vscode-langservers-extract vls @angular/language-server emmet-ls
~~~

### GUI

- [Bitwarden](https://bitwarden.com/)
- Google Chrome
- Google Drive
- Firefox

~~~
brew install bitwarden google-chrome firefox
~~~

### Mac Utilities

- [Alt-tab](https://alt-tab-macos.netlify.app/) - Windows alt-tab on macOS
- AppCleaner
- Cheatsheet 
- Hiddenbar 
- [Maccy](https://github.com/p0deje/Maccy) - Clipboard manager
- [Unnatural Scroll Wheel](https://github.com/ther0n/UnnaturalScrollWheels) - Fix Scroll Wheel & Mouse acceleration

~~~
brew install alt-tab hiddenbar cheatsheet maccy appcleaner 
brew install --cask unnaturalscrollwheels
~~~

### Communication

- Whatsapp 
- Telegram
- Zoom 
- Teams 
- Skype
- Spark

~~~
brew install whatsapp telegram zoom microsoft-teams skype spark
~~~

### Notes

- Notion
- Obsidian

~~~
brew install google-chrome firefox
brew install notion obsidian
~~~

### Entertaiment

- Amazon Prime Video
- Stremio
- Iina

~~~
brew install iina stremio  
~~~

### Edition

- Figma
- DaVinci Resolve - Video Editor

~~~
brew install figma
~~~

## Restore config files

~~~
cp config/.mackup.cfg ~/ && mackup backup
~~~

## Other

### Allow all apps

~~~
sudo spctl --global-disable
~~~


