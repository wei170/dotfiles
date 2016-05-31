# To-do

- [*] Homebrew install
- [*] macVim / vim update
- [*] Bundle install
- [*] Vundle install
- [*] zsh install
- [*] Tmux install
- [*] iTerm install
- [ ] iTerm config (screenshot)
- [*] ln shell file
- [ ] Check all on another computer


# Get started
---

Navigate to your home directory

```
cd ~
```

Clone this git repository to your home directory

```
git clone <url_of_this_repository>
```

    
# Homebrew
---

Homebrew can help you install many widgets in the command lines

## Install homebrew

This is cited from homebrew official website: <a href="http://brew.sh">http://brew.sh</a> </br>

``` 
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## How to use homebrew

``` 
brew install <stuff_you_want_to_install> 
```

# macVim / vim update
---
Upgrade Vim on OSX

```
brew install macvim --override-system-vim
# mercurial required - install if you don't already have it.
brew install mercurial
# install Vim
brew install vim
# if /usr/bin is before /usr/local/bin in your $PATH,
# hide the system Vim so the new version is found first
sudo mv /usr/bin/vim /usr/bin/vim72
# should return /usr/local/bin/vim
which vim
```
-- <a href="http://www.prioritized.net/blog/upgrading-vim-on-os-x">Cited from here.</a> </br>

# Bundle
---

Bundler provides a consistent environment for Ruby projects by tracking and installing the exact gems and versions that are needed. 

Bundler is an exit from dependency hell, and ensures that the gems you need are present in development, staging, and production. Starting work on a project is as simple as bundle install. -- <a href="https://bundler.io"> Cited from here.</a>


## Install bundle

If you already install homebrew, you can use it:

``` 
brew install bundle
```

OR, you can use:

```
gem install bundler
```
Install all of the required gems from your specified sources:

```
bundle install
git add Gemfile Gemfile.lock
```
>> The second command adds the Gemfile and Gemfile.lock to your repository. This ensures that other developers on your app, as well as your deployment environment, will all use the same third-party code that you are using now.

Link the bundle in the Vim

```
brew linkapps
```

# Vundle
---

Vundle is short for Vim bundle and is a Vim plugin manager.

Vundle allows you to...

* keep track of and configure your plugins right in the .vimrc
* install configured plugins (a.k.a. scripts/bundle)
* update configured plugins
* search by name all available Vim scripts
* clean unused plugins up
* run the above actions in a single keypress with interactive mode

Vundle automatically...

* manages the runtime path of your installed scripts
* regenerates help tags after installing and updating

Vundle is undergoing an interface change, please stay up to date to get latest changes. -- <a href="https://github.com/VundleVim/Vundle.vim"> Cited from here.</a>

## Install the Vundle

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

# Zsh (Oh My Zsh)
---

Oh My Zsh is an open source, community-driven framework for managing your zsh configuration. That sounds boring. Let's try this again.

Oh My Zsh is a way of life! Once installed, your terminal prompt will become the talk of the town or your money back! Each time you interact with your command prompt, you'll be able to take advantage of the hundreds of bundled plugins and pretty themes. Strangers will come up to you in cafés and ask you, "that is amazing. are you some sort of genius?" Finally, you'll begin to get the sort of attention that you always felt that you deserved. ...or maybe you'll just use the time that you saved to start flossing more often.

To learn more, visit ohmyz.sh and follow @ohmyzsh on Twitter. -- <a href="https://github.com/robbyrussell/oh-my-zsh">Cited from here.</a>

### Prerequisites
* Unix-based operating system (OS X or Linux)
* Zsh should be installed 
* curl or wget should be installed
* git should be installed

## Install Zsh and oh-my-zsh

Oh-My-Zsh is a framework for zsh, the Z shell, so first we need to install zsh:

```
brew install zsh
```

If you did NOT installed wget or curl before, then type this line. If you did, skip this! 

#### via curl

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
#### via wget

```
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

# Tmux
---

tmux is a "terminal multiplexer", it enables a number of terminals (or windows)
to be accessed and controlled from a single terminal. tmux is intended to be a
simple, modern, BSD-licensed alternative to programs such as GNU screen. -- <a href="https://raw.githubusercontent.com/tmux/tmux/master/README">Cited from here.</a>

## Install Tmux

```
brew install tmux
```

# iTerm
iTerm2 is a replacement for Terminal and the successor to iTerm. It works on Macs with OS 10.5 (Leopard) or newer. iTerm2 brings the terminal into the modern age with features you never knew you always wanted.

Install iTerm2:

<a href="https://iterm2.com/downloads/stable/iTerm2-2_1_4.zip">Download here.</a>


# Git config coming soon!
---
    
