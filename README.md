# My Dotfiles
These are my dotfile configuration files for different software in Bash.

## .vimrc
This is my custom .vimrc configuration for Vim.

## .bashrc
This is my custom .bashrc configuration for Bash.

## .gitignore
This file lets Git know to ignore specified files or directores.

## bashrc_custom
This file contains the custom commands for alias.

## vimrc
This file has custom settings used for syntax, autoindent, the ruler, and the line numbers, which is also used to change the color scheme and also disables autotab.

## linux.sh
This file checks the operating system. It then creates the directory 'TRASH' and makes a hidden file in the home directory with the name '.vimrc'. It then changes this file's name while outputting a message to confirm this process into the 'linuxsetup.log' file. Lastly, it overwrites the 'etc/vimrc' file output and puts this into the '.vimrc' file. It then adds the line 'source ~/.dotfiles/etc/bashrc_custom' to the 'bash.rc' file.

## cleanup.sh
This file removes '.TRASH' and '.vimrc' from the home directory. It then removes the line 'source ~/.dotfiles/bashrc_custom' from the .bashrc file.

## Makefile
This file has two targets from the 'linux.sh' file and 'clean.sh' file. The 'linux' part is then focues on 'clean' so it runs clean before anything else.
