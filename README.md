## Personal customizations to oh-my-zsh

This is my personal customizations to
[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).

### Installation

* Clone the repo to ~/.zsh:  
  `git clone git://github.com/babysnakes/oh-my-zsh-customizations.git
.zsh`
* Link the zshrc file:  
  `ln -s ~/.zsh/zshrc ~/.zshrc`
* Copy the themes/bira-rbenv.zsh-theme file to .oh-my-zsh directory
  (until they'll support themes from custom directories):  
  `cp themes/bira-rbenv.zsh-theme ~/.oh-my-zsh/themes/`

### Usage

* Add any customizaton script to `$HOME/.zsh/custom`, make sure it ends
  with `.zsh`.
* Any custom plugin, add to `$HOME/.zsh/custom/plugins/`.
