#!/bin/bash

#
# Bash logout configuration
#

# Clear the screen to increase privacy when leaving the console
if [ "$SHLVL" = 1 ]
then
  [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi
