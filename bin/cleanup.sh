#!/bin/bash

#removes the .vimrc file
rm -f ~/.vimrc

#removes the line containing "bashrc_custom"
sed -i "/bashrc_custom/d" ~/.bashrc

#force removes the 'TRASH' directory
rm -rf ~/.TRASH/
