# My Config Files

#### Usage
1. Download or clone this repository.
2. Navigate to the directory: `cd ConfigFiles/`.
3. Copy the files you want onto your own. Make sure to backup your files incase you want to revert the changes.
`cp vimrc ~/.vimrc` (replace `vimrc` with `bashrc` or `bash_profile`).

##### vimrc
1. This vimrc uses Vundle. Install [Vundle](https://github.com/VundleVim/Vundle.vim).
2. Open: `vi ~/.vimrc`.
3. Update: `:source %` (Run this command within vim).
4. Install Vundle plugins: `:PluginInstall` (Run this command within vim).

##### Noteable Features

* Vundle plugin manager
* Hybrid colorscheme
* Airline status bar
* Tab is 2 spaces
* Auto wrap at column 80
* Thin grey bar after column 80
* Unnecessary whitespace is highlighted cyan
* Unnecessary whitespace is cleared upon writing or quitting

##### bashrc and bash_profile
1. Update: `$ source ~/.bashrc` or `$ source ~/bash_profile` (Run this command from the terminal).

##### Noteable Features

* Nothing special here, just a few aliases that I like along with directory coloring and some exports
