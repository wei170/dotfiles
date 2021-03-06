# To-do

- [X] Homebrew install
- [ ] sh install.sh
- [X] macVim / vim update
- [X] Xcode install
- [X] Bundle install
- [X] Vundle install
- [X] Vim plugin install
- [X] zsh install
- [X] Tmux install
- [X] iTerm install
- [X] iTerm config (screenshot)
- [X] ln shell file
- [ ] Check all on another computer
- [ ] Move all into a shell file


# Get started
---

Navigate to your home directory

```
$ cd ~
```

Clone this git repository to your home directory

```
$ git clone <url_of_this_repository>
```

Command line tool for Xcode

```
$ xcode-select --install
```

<a href=" https://developer.apple.com/downloads">https://developer.apple.com/downloads</a> or <a href=""https://itunes.apple.com/us/app/xcode/id497799835>Xcode 3</a>
    
# Homebrew
---

Homebrew can help you install many widgets in the command lines

!!! IMPORTANT:

>If your system is Linux, skip this whole section. Everytime you want to install something just type

>
```
$ sudo apt-get install <anything_you_want_to_install>
```

## Install homebrew

This is cited from homebrew official website: <a href="http://brew.sh">http://brew.sh</a> </br>

``` 
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Problems when installing homebrew
If you successfully install homebrew, skip this.

### Problem 1
```Illegal variable name.```

You are using ```tcsh```, which does not support ```$()``` as a syntax for command substitution. Change to ```bash``` by just typing ```bash```.

### Problem 2
```This script requires the user <your_account_name> to be an Administrator...```

If you are one of the Administrators of the computer, add ```sudo ``` and enter your password

``` 
$ sudo /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

If not, maybe because you are using public mac desktops.

```
$ cd ~ && mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
```

## How to use homebrew

``` 
$ brew install <stuff_you_want_to_install> 
```

# macVim / vim update
---
Upgrade Vim on OSX

```
$ brew install macvim --override-system-vim
# mercurial required - install if you don't already have it.
$ brew install mercurial
# install Vim
$ brew install vim
# if /usr/bin is before /usr/local/bin in your $PATH,
# hide the system Vim so the new version is found first
$ sudo mv /usr/bin/vim /usr/bin/vim72
# should return /usr/local/bin/vim
$ which vim
```
-- <a href="http://www.prioritized.net/blog/upgrading-vim-on-os-x">Cited from here.</a> </br>

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
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

# Vim Plugin Install
---

Time to install all the plugins in my .vimrc

First, open the Vim.

Then, type 
```
:PluginInstall
```

![Minion](./Images_for_README/SS_VimPlugin.png  =200x)


## Solve the YouCompleteMe problem #1

When you are installing the plugins, there will a problem

To solve this, you need to navigate to the YouCompleteMe directory and
```
python install.sh
```

## Solve the YouCompleteMe problem #2

When you open Vim, there are some errors like this:

![Minion](./Images_for_README/Screenshot2.png  =500x)

Check these three things:

* Vim version: ```vim --version``` (it should be 7.4) 
	* Linux: 
	* OS X:
* Python version: ```python ---version``` (it should be 2.7.10)
* Check if the path of you_complete_me to the python is the right one:
	* In the shell, type ```which python```, that is the python path you are using
	* Then open Vim, just type ```return``` to go over the errors, the type ```:echo pyeval( 'paths.PathToPythonInterpreter()' )```
	* If this two paths are different, add the following lines to your .vimrc
	
	```
	" Fix Python Path (for YCM)
	let g:ycm_path_to_python_interpreter="/usr/bin/python"
	```
* If there is still a problem, that means you need to add the flag ```--enable-unicode=ucs4``` when building python from source.

	```
	$ cd ~
	$ wget https://www.python.org/ftp/python/2.7.11/Python-2.7.11.tar.xz
	$ tar -xvf Python-2.7.11.tar.xz
	$ cd Python-2.7.11
	$ ./configure --enable-unicode=ucs4
	$ make
	$ make install
	```
	
!!! IMPORTANT: If you are Purdue University Student, using ssh to login the lab computers, you cannot change the python version or any configuration. So you cannot use YouCompleteMe... Just comment the line:63
	
	```
	$ vim ~/dotfile/.vimrc
	:63
	gcc
	ZZ
	```
Now, you are good to go!
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
$ brew install zsh
```

If you did NOT installed wget or curl before, then type this line. If you did, skip this! 

#### via curl

```
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
#### via wget

```
$ sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

# Tmux
---

tmux is a "terminal multiplexer", it enables a number of terminals (or windows)
to be accessed and controlled from a single terminal. tmux is intended to be a
simple, modern, BSD-licensed alternative to programs such as GNU screen. -- <a href="https://raw.githubusercontent.com/tmux/tmux/master/README">Cited from here.</a>

## Install Tmux

```
$ brew install tmux
```

# iTerm
iTerm2 is a replacement for Terminal and the successor to iTerm. It works on Macs with OS 10.5 (Leopard) or newer. iTerm2 brings the terminal into the modern age with features you never knew you always wanted.

Install iTerm2:

<a href="https://iterm2.com/downloads/stable/iTerm2-2_1_4.zip">Download here.</a>

If you like the homebrew theme or any other style, like me, you can change the iterm preference
`⌘,` and navigate to `Profiles`

![Image](./Images_for_README/Screenshot1.png =600x)

Or, you can draw the `load Presets...` down to `Visit Online Gallery` # I use the Homwbrew theme

# Git config coming soon!
---
    
