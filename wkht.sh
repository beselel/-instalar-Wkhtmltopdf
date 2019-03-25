#!/bin/bash
# Copyright 2018 <odooerpcloud.com> 

wk32="https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-i386.tar.xz"
wk64="https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz"

# FIX wkhtml* dependencie Ubuntu Server 18.04
sudo apt-get install libxrender1

# Download & install WKHTMLTOPDF

if [ "`getconf LONG_BIT`" == "32" ];

then
	wget $wk32
else
	wget $wk64
fi

tar xvf wkhtmltox*.tar.xz
sudo rm -f /usr/local/bin/wkht*
sudo rm -f /usr/bin/wkht*

sudo cp -r wkhtmltox/bin/* /usr/local/bin/
sudo cp -r wkhtmltox/bin/* /usr/bin/

echo "Finished!! ;) by <odooerpcloud.com>"
rm -rf wkhtml*
