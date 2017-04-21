Ubuntu Post Install Scripts
===========================

Original Author: [Sven Haadem](https://github.com/haadem)

This project is my set of post-installation and maintenance scripts for Ubuntu, to run on a fresh install.

Feel free to fork this project, modify to suit your preference, and distribute.

##Structure

This project is coded and organized in a modular fashion so you can easily delete or exclude parts that you don't want to use.

 * [`data`](/data): this folder contains files which 


##Usage

Simple, you just run the main script from the root of the source folder:

    ./

Or you can store this scriptset in some directory, and add that location to your custom shell paths to run on-demand. For example, adding it as the following line to your `.bashrc` (editing the path appropriately):

    export PATH=${PATH}:$HOME/scripts/
