#!/bin/sh

# ---------------
# Start IP-Symcon
#
# 1017-10-29: Set language
# 2017-10-01: Removed setup timezone
# 2015-07-05: Added test if configuration in "/usr/share/symcon" exit
# ---------------

# Versteckte Files (dot-files) bearbeiten (cp,mv,rm)
shopt -s dotglob

# Set language
#export LANG=de_DE@euro

#test if configuration in /usr/share/symcom exits.
#if not -> copy template files
if [ -e /usr/share/symcon/logo.ico ]; then
    echo "Config /usr/share exists"
else
    echo "Config /usr/share not exists "
    echo "Copy template files "
    cp -R /usr/share/symcon.org/* /usr/share/symcon
fi

#test if configuration in /var/lib/symcom exits.
#if not -> copy template files
if [ -e /var/lib/symcon/php.ini ]; then
    echo "Config /var/lib exists"
else
    echo "Config /var/lib not exists "
    echo "Copy template files "
    cp -R /var/lib/symcon.org/* /var/lib/symcon
fi

#test if configuration in /root exits.
#if not -> copy template files
if [ -e /root/.profile ]; then
    echo "Config /root exists"
else
    echo "Config /root not exists "
    echo "Copy template files "
    cp -R /root.org/* /root
fi

echo "Start IP-Symcon"
/usr/bin/symcon
