Ubuntu Post Install Scripts
===========================

Original Author: [Sven Haadem](https://github.com/haadem)

This project is my set of post-installation and maintenance scripts for Ubuntu, to run on a fresh install.

Feel free to fork this project, modify to suit your preference, and distribute.

##Structure

This project is coded and organized in a modular fashion so you can easily delete or exclude parts that you don't want to use.

 * [`data`](/data): This folder contains files used by the main script
 * [`config`](/config): This folder contains configuration scripts like .profile andd ssh config.


##Usage

For fresh install -- just run the main script from the root of the source folder:

    bash first_time_ubuntu.sh
    
For startup script -- just run the main script from the root of the source folder:

    bash startup.sh

Or you can store this scriptset in some directory, and add that location to your custom shell paths to run on-demand. For example, adding it as the following line to your `.bashrc` (editing the path appropriately):

    export PATH=${PATH}:$HOME/scripts/
