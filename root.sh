#!/bin/bash
#===========WARNA TEKS============#
kuning="\033[33m"
ERROR="\033[31m[ERROR]\033[0m"
putih='\e[0m'
hitam="\033[30m"
merah="\033[31m"
hijau="\033[32m"
kuning="\033[33m"
biru="\033[34m"
ungu="\033[35m"
cyan="\033[36m"
putih="\033[37m"
#=====================================
clear
clear
echo -e "$hijau Masukan Password Anda$putih"
sudo wget https://github.com/OknumA2Nyell/tunneling/raw/main/files/sshd_config
sudo mv sshd_config /etc/ssh/sshd_config
clear
echo -e "$hijau[ MASUKAN PASSWORD BARU ANDA ]$putih"
echo ""
sudo passwd
echo ""
sudo service ssh restart
echo -e "[ $hijau OK$putih ] Berhasil restart ssh"
sleep 2
sudo service sshd restart
echo -e "[ $hijau OK$putih ] Berhasil restart sshd"
sleep 2
echo -e "[ $hijau OK$putih ] Vps telah berhasil di root"
echo -e "$merah!!$putih Simpan dan ingat baik-baik password anda"
echo ""
echo -e "$kuning Silakan login menggunakan username : root dan password yang telah di buat tadi$putih"
echo -e "$merah Note$putih : Login menggunakan port 2222 atau 2223 agar terhindar dari $merah bruteforce$putih"
echo ""
rm $0

exit 1