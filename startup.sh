#!/bin/bash
###################################################
#
# Starupt script
#
###################################################

dir="$(dirname "$0")"
source $dir/data/links.sh

google-chrome \
	--new-window \
	--window-position=1000,1000 \
	--window-size=2000,1000 \
	--chrome-frame \
	$LINKS

#google-chrome --new-window $LINKS2

#charm

#devilspie2


