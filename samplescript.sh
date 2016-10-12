#!/bin/bash
# This is a simple bash script
#Written by Port Linux <portlinux@gmail.com>
#Site: http://www.portlinux.com

##################################################################
# CONTROL THE USER ROOT STATUS
##################################################################
if [ $EUID -ne 0 ]; then
   echo "Root kullanıcı yetkilerine sahip değilsiniz" 1>&2
   exit 1
fi
##################################################################
# CONTROL THE OPERATING SYSTEM UNAME
##################################################################
DIST=$(/usr/bin/lsb_release -is)
RELEASE=$(/usr/bin/lsb_release -rs)
CODENAME=$(/usr/bin/lsb_release -cs)
CHKArch=`uname -m`
echo "İşletim Sistemi Kontrol Ediliyor..."
CHKArch=`uname -m`
echo "Sistem Mimarisi kontrol Ediliyor..."
sleep 1
echo "Mimarisi:`printf "\e[32m $DIST"``echo -e "\033[0m"`"
echo "Dağıtım:`printf "\e[32m $RELEASE"``echo -e "\033[0m"`"
echo "Sürüm:`printf "\e[32m $CODENAME"``echo -e "\033[0m"`"
echo "Sürüm Adı:`printf "\e[32m $CHKArch"``echo -e "\033[0m"`"
exit 1
##################################################################
# NEXT CODE WILL BE BELOW
##################################################################
