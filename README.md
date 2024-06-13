# My list of dotfiles to sync between devices 

# How to use it?
I use [GNU Stow](https://www.gnu.org/software/stow/) to manage my dots. Firstly you need to install stow using you package manager.  
Using homebrew (macos):  
```bash
brew install stow
```  
Using pacman (arch):  
```bash
pacman -S stow
```  
etc.

Then just type something like  
```bash
stow <package name>
```  
in repo directory to sync dots of given package.

