#!/bin/bash
#Script written by Umair <noobslab.com@gmail.com> Mon, 08 Sep 2014 02:24:08 +0200
#Site: http://www.NoobsLab.com
if [ $EUID -ne 0 ]; then
   echo "AdobeAir kurulum scripti root olarak çalıştırılmalıdır.(Hint: sudo kullanın)" 1>&2
   exit 1
fi
echo "
Bu program sadece Ubuntu nun belirtilen sürümleri içindir.`printf "\e[32m16.04 Xenial"``echo -e "\033[0m"`/`printf "\e[32m15.10 Wily"``echo -e "\033[0m"`/`printf "\e[32m15.04 Vivid"``echo -e "\033[0m"`/`printf "\e[32m14.04 Trusty"``echo -e "\033[0m"`/`printf "\e[32m12.04 Precise"``echo -e "\033[0m"` and Linux Mint `printf "\e[32m17.x"``echo -e "\033[0m"`/`printf "\e[32m17"``echo -e "\033[0m"`/`printf "\e[32m13"``echo -e "\033[0m"`
"
CHKVer=`/usr/bin/lsb_release -rs`
TVer=`/usr/bin/lsb_release -rs`
echo "İşletim Sistemi Kontrol Ediliyor..."
CHKArch=`uname -m`
echo "Sistem Mimarisi kontrol Ediliyor"
sleep 1
echo ""
if [ $CHKVer = "14.04" ] || [ $CHKVer = "17" ]; then
	#For Ubuntu 14.04 64bit
	if [ $CHKArch = "x86_64" ]; then
		if [ $TVer = "14.04" ]; then
		echo "İşletim Sisteminiz Ubuntu: `printf "\e[32m14.04 Trusty"``echo -e "\033[0m"`"
		elif [ $TVer = "17" ]; then
		echo "İşletim Sisteminiz Linux Mint: `printf "\e[32m17 Qiana"``echo -e "\033[0m"`"
		fi
		echo "Bağımlılıklar yükleniyor"
		sleep 1
		apt-get install libxt6:i386 libnspr4-0d:i386 libgtk2.0-0:i386 libstdc++6:i386 libnss3-1d:i386 lib32nss-mdns libxml2:i386 libxslt1.1:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386 libgnome-keyring0:i386 libxaw7
		echo "Bağlantılar oluşturuluyor..."
		echo "."
		ln -sf /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
		echo ".."
		ln -sf /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
	#Ubuntu 14.04 32bit
	elif [ $CHKArch = "i686" ]; then
		if [ $TVer = "14.04" ]; then
		echo "İşletim Sisteminiz Ubuntu: `printf "\e[32m14.04 Trusty"``echo -e "\033[0m"`"
		elif [ $TVer = "17" ]; then
		echo "İşletim Sisteminiz Linux Mint: `printf "\e[32m17 Qiana"``echo -e "\033[0m"`"
		fi
		echo "Bağımlılıklar yükleniyor"
		sleep 1
		apt-get install libgtk2.0-0 libxslt1.1 libxml2 libnss3 libxaw7 libgnome-keyring0
		echo "Bağlantılar oluşturuluyor..."
		echo "."
		ln -sf /usr/lib/i386-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
		echo ".."
		ln -sf /usr/lib/i386-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
	fi

elif [ $CHKVer = "14.04.1" ] || [ $CHKVer = "17.1" ]; then
	#For Ubuntu 14.04.1 64bit
	if [ $CHKArch = "x86_64" ]; then
		if [ $TVer = "14.04.1" ]; then
		echo "İşletim Sisteminiz Ubuntu: `printf "\e[32m14.04.1 Trusty"``echo -e "\033[0m"`"
		elif [ $TVer = "17.1" ]; then
		echo "İşletim Sisteminiz Linux Mint: `printf "\e[32m17.1 Rebecca"``echo -e "\033[0m"`"
		fi
		echo "Bağımlılıklar yükleniyor"
		sleep 1
		apt-get install libxt6:i386 libnspr4-0d:i386 libgtk2.0-0:i386 libstdc++6:i386 libnss3-1d:i386 lib32nss-mdns libxml2:i386 libxslt1.1:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386 libgnome-keyring0:i386 libxaw7
		echo "Bağlantılar oluşturuluyor..."
		echo "."
		ln -sf /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
		echo ".."
		ln -sf /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
	#Ubuntu 14.04.1 32bit
	elif [ $CHKArch = "i686" ]; then
		if [ $TVer = "14.04.1" ]; then
		echo "İşletim Sisteminiz Ubuntu: `printf "\e[32m14.04.1 Trusty"``echo -e "\033[0m"`"
		elif [ $TVer = "17.1" ]; then
		echo "İşletim Sisteminiz Linux Mint: `printf "\e[32m17.1 Rebecca"``echo -e "\033[0m"`"
		fi
		echo "Bağımlılıklar yükleniyor"
		sleep 1
		apt-get install libgtk2.0-0 libxslt1.1 libxml2 libnss3 libxaw7 libgnome-keyring0
		echo "Bağlantılar oluşturuluyor..."
		echo "."
		ln -sf /usr/lib/i386-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
		echo ".."
		ln -sf /usr/lib/i386-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
	fi

elif [ $CHKVer = "14.04.2" ] || [ $CHKVer = "17.2" ]; then
	#For Ubuntu 14.04.2 64bit
	if [ $CHKArch = "x86_64" ]; then
		if [ $TVer = "14.04.2" ]; then
		echo "İşletim Sisteminiz Ubuntu: `printf "\e[32m14.04.2 Trusty"``echo -e "\033[0m"`"
		elif [ $TVer = "17.2" ]; then
		echo "İşletim Sisteminiz Linux Mint: `printf "\e[32m17.2"``echo -e "\033[0m"`"
		fi
		echo "Bağımlılıklar yükleniyor"
		sleep 1
		apt-get install libxt6:i386 libnspr4-0d:i386 libgtk2.0-0:i386 libstdc++6:i386 libnss3-1d:i386 lib32nss-mdns libxml2:i386 libxslt1.1:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386 libgnome-keyring0:i386 libxaw7
		echo "Bağlantılar oluşturuluyor..."
		echo "."
		ln -sf /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
		echo ".."
		ln -sf /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
	#Ubuntu 14.04.2 32bit
	elif [ $CHKArch = "i686" ]; then
		if [ $TVer = "14.04.2" ]; then
		echo "İşletim Sisteminiz Ubuntu: `printf "\e[32m14.04.2 Trusty"``echo -e "\033[0m"`"
		elif [ $TVer = "17.2" ]; then
		echo "İşletim Sisteminiz Linux Mint: `printf "\e[32m17.2"``echo -e "\033[0m"`"
		fi
		echo "Bağımlılıklar yükleniyor"
		sleep 1
		apt-get install libgtk2.0-0 libxslt1.1 libxml2 libnss3 libxaw7 libgnome-keyring0
		echo "Bağlantılar oluşturuluyor..."
		echo "."
		ln -sf /usr/lib/i386-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
		echo ".."
		ln -sf /usr/lib/i386-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
	fi


elif [ $CHKVer = "14.04.3" ] || [ $CHKVer = "17.3" ]; then
	#For Ubuntu 14.04.3 64bit
	if [ $CHKArch = "x86_64" ]; then
		if [ $TVer = "14.04.2" ]; then
		echo "İşletim Sisteminiz Ubuntu: `printf "\e[32m14.04.3 Trusty"``echo -e "\033[0m"`"
		elif [ $TVer = "17.2" ]; then
		echo "İşletim Sisteminiz Linux Mint: `printf "\e[32m17.3"``echo -e "\033[0m"`"
		fi
		echo "Bağımlılıklar yükleniyor"
		sleep 1
		apt-get install libxt6:i386 libnspr4-0d:i386 libgtk2.0-0:i386 libstdc++6:i386 libnss3-1d:i386 lib32nss-mdns libxml2:i386 libxslt1.1:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386 libgnome-keyring0:i386 libxaw7
		echo "Bağlantılar oluşturuluyor..."
		echo "."
		ln -sf /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
		echo ".."
		ln -sf /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
	#Ubuntu 14.04.2 32bit
	elif [ $CHKArch = "i686" ]; then
		if [ $TVer = "14.04.2" ]; then
		echo "İşletim Sisteminiz Ubuntu: `printf "\e[32m14.04.3 Trusty"``echo -e "\033[0m"`"
		elif [ $TVer = "17.2" ]; then
		echo "İşletim Sisteminiz Linux Mint: `printf "\e[32m17.3"``echo -e "\033[0m"`"
		fi
		echo "Bağımlılıklar yükleniyor"
		sleep 1
		apt-get install libgtk2.0-0 libxslt1.1 libxml2 libnss3 libxaw7 libgnome-keyring0
		echo "Bağlantılar oluşturuluyor..."
		echo "."
		ln -sf /usr/lib/i386-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
		echo ".."
		ln -sf /usr/lib/i386-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
	fi

elif [ $CHKVer = "16.04" ] || [ $CHKVer = "18" ]; then
	#For Ubuntu 16.04 64bit and Linux Mint 18
	if [ $CHKArch = "x86_64" ]; then

		if [ $TVer = "16.04" ]; then
		echo "İşletim Sisteminiz Ubuntu: `printf "\e[32m16.04 Xenial"``echo -e "\033[0m"`"
		elif [ $TVer = "18" ]; then
		echo "İşletim Sisteminiz Linux Mint: `printf "\e[32m18"``echo -e "\033[0m"`"
		fi
		#echo "İşletim Sisteminiz Ubuntu: `printf "\e[32m16.04 Xenial"``echo -e "\033[0m"`"

		echo "Bağımlılıklar yükleniyor"
		sleep 1
		apt-get install libxt6:i386 libnspr4-0d:i386 libgtk2.0-0:i386 libstdc++6:i386 libnss3-1d:i386 libnss-mdns:i386 libxml2:i386 libxslt1.1:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386 libgnome-keyring0:i386 libxaw7
		echo "Bağlantılar oluşturuluyor..."
		echo "."
		ln -sf /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
		echo ".."
		ln -sf /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
	#Ubuntu 16.04 32bit and Linux Mint 18
	elif [ $CHKArch = "i686" ]; then
		echo "İşletim Sisteminiz Ubuntu: `printf "\e[32m16.04 Xenial"``echo -e "\033[0m"`"
		echo "Bağımlılıklar yükleniyor"
		sleep 1
		apt-get install libgtk2.0-0 libxslt1.1 libxml2 libnss3 libxaw7 libgnome-keyring0
		echo "Bağlantılar oluşturuluyor..."
		echo "."
		ln -sf /usr/lib/i386-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
		echo ".."
		ln -sf /usr/lib/i386-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
	fi

elif [ $CHKVer = "15.10" ]; then
	#For Ubuntu 15.10 64bit
	if [ $CHKArch = "x86_64" ]; then
		echo "İşletim Sisteminiz Ubuntu: `printf "\e[32m15.10 Wily"``echo -e "\033[0m"`"
		echo "Bağımlılıklar yükleniyor"
		sleep 1
		apt-get install libxt6:i386 libnspr4-0d:i386 libgtk2.0-0:i386 libstdc++6:i386 libnss3-1d:i386 lib32nss-mdns libxml2:i386 libxslt1.1:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386 libgnome-keyring0:i386 libxaw7
		echo "Bağlantılar oluşturuluyor..."
		echo "."
		ln -sf /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
		echo ".."
		ln -sf /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
	#Ubuntu 15.10 32bit
	elif [ $CHKArch = "i686" ]; then
		echo "İşletim Sisteminiz Ubuntu: `printf "\e[32m15.10 Wily"``echo -e "\033[0m"`"
		echo "Bağımlılıklar yükleniyor"
		sleep 1
		apt-get install libgtk2.0-0 libxslt1.1 libxml2 libnss3 libxaw7 libgnome-keyring0
		echo "Bağlantılar oluşturuluyor..."
		echo "."
		ln -sf /usr/lib/i386-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
		echo ".."
		ln -sf /usr/lib/i386-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
	fi

elif [ $CHKVer = "15.04" ]; then
	#For Ubuntu 15.04 Vivid 64bit
	if [ $CHKArch = "x86_64" ]; then
		echo "İşletim Sisteminiz Ubuntu: `printf "\e[32m15.04 Vivid"``echo -e "\033[0m"`"
		echo "Bağımlılıklar yükleniyor"
		sleep 1
		apt-get install libxt6:i386 libnspr4-0d:i386 libgtk2.0-0:i386 libstdc++6:i386 libnss3-1d:i386 lib32nss-mdns libxml2:i386 libxslt1.1:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386 libgnome-keyring0:i386 libxaw7
		echo "Bağlantılar oluşturuluyor..."
		echo "."
		ln -sf /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
		echo ".."
		ln -sf /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
	#Ubuntu 15.04 Vivid 32bit
	elif [ $CHKArch = "i686" ]; then
		echo "İşletim Sisteminiz Ubuntu: `printf "\e[32m15.04 Vivid"``echo -e "\033[0m"`"
		echo "Bağımlılıklar yükleniyor"
		sleep 1
		apt-get install libgtk2.0-0 libxslt1.1 libxml2 libnss3 libxaw7 libgnome-keyring0
		echo "Bağlantılar oluşturuluyor..."
		echo "."
		ln -sf /usr/lib/i386-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
		echo ".."
		ln -sf /usr/lib/i386-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
	fi

elif [ $CHKVer = "12.04" ] || [ $CHKVer = "13" ]; then
	#Ubuntu 12.04 32bit
	if [ $CHKArch = "i686" ]; then
		if [ $TVer = "12.04" ]; then
		echo "İşletim Sisteminiz Ubuntu: `printf "\e[32m12.04 Precise"``echo -e "\033[0m"`"
		elif [ $TVer = "13" ]; then
		echo "İşletim Sisteminiz Linux Mint: `printf "\e[32m13 Maya"``echo -e "\033[0m"`"
		fi
		echo "Bağımlılıklar yükleniyor"
		sleep 1
		apt-get install libhal-storage1 libgnome-keyring0 libgnome-keyring0 libgtk2.0-0 libxslt1.1 libxml2
		echo "Bağlantılar oluşturuluyor..."
		echo "."
		ln -sf /usr/lib/i386-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
		echo ".."
		ln -sf /usr/lib/i386-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
	#Ubuntu 12.04 64bit
	elif [ $CHKArch = "x86_64" ]; then
		if [ $TVer = "12.04" ]; then
		echo "İşletim Sisteminiz Ubuntu: `printf "\e[32m12.04 Precise"``echo -e "\033[0m"`"
		elif [ $TVer = "13" ]; then
		echo "İşletim Sisteminiz Linux Mint: `printf "\e[32m13 Maya"``echo -e "\033[0m"`"
		fi
		echo "Bağımlılıklar yükleniyor"
		sleep 1
		apt-get install ia32-libs lib32nss-mdns libhal-storage1 libgnome-keyring0 libgnome-keyring0 libgtk2.0-0 libxslt1.1 libxml2
		echo "Bağlantılar oluşturuluyor..."
		echo "."
		ln -sf /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
		echo ".."
		ln -sf /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
	fi

else
echo "İşletim Sisteminiz Ubuntu değil. `printf "\e[32m16.04 Xenial"``echo -e "\033[0m"`/`printf "\e[32m15.10 Wily"``echo -e "\033[0m"`/`printf "\e[32m15.04 Vivid"``echo -e "\033[0m"`/`printf "\e[32m14.04 Trusty"``echo -e "\033[0m"`/`printf "\e[32m12.04 Precise"``echo -e "\033[0m"`, or Linux Mint `printf "\e[31m17.x"``echo -e "\033[0m"`/`printf "\e[31m13 Maya"``echo -e "\033[0m"`"
sleep 1
echo "Çıkılıyor..."
exit 1
fi

echo "AdobeAir kurulum dosyası Adobe sitesinten indiriliyor. "
	sleep 1
	wget -O AdobeAIRInstaller.bin http://airdownload.adobe.com/air/lin/download/2.6/AdobeAIRInstaller.bin
	echo "Kurulum dosyası çalıştırılabilir hale getiriliyor"
	sleep 1
	chmod +x AdobeAIRInstaller.bin
	echo "Kurulum dosyası başlatılıyor."
	./AdobeAIRInstaller.bin
	echo "Gereksiz dosyalar kaldırılıyor."
	rm AdobeAIRInstaller.bin
	rm /usr/lib/libgnome-keyring.so.0
	rm /usr/lib/libgnome-keyring.so.0.2.0
echo ""
echo "Keep visit on http://www.portlinux.com
"
sleep 1
exit 1
