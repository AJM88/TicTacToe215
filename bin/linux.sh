#!/bin/bash 
   
#runs a check to see if the operation system is linux, where if it isn't an error message is placed in the 'linuxsetup.log' file and the program exits.
   if [ $(uname) = 'Linux' ]; then
           echo "Operating system is $(uname)"
   else
           uname 2> linuxsetup.log
           exit
   fi

   #maeks a directory called "TRASH"
   mkdir -p ~/.TRASH/
   
   #makes a '.vimrc file in the home directory
   touch ~/.vimrc

   #renames '.vimrc' to '.bup_vimrc' and puts out the message ".vimrc was changed to .bup_vimrc" into linux setup.log
   if [ -f ~/.vimrc ]; then
	   mv ~/.vimrc ~/.bup_vimrc | echo ".vimrc changed to .bup_vimrc" >> linuxsetup.log
   fi

   #overwrites the output of 'etc/vimrc' into '~/vimrc'
   cat etc/vimrc > ~/.vimrc

   #appends "source ~/.dotfiles/etc/bashrc_custom" to the last line of '~/.bashrc'
   echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

