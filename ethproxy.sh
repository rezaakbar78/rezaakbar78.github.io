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
IPVPS=$(curl -s ipv4.icanhazip.com)
sudo apt -y update
echo -e "[ $merah !! $putih] Melakukan Install docker npm dan screen"
sudo apt install -y docker.io npm screen
echo -e "[ $hijau OK $putih] Suksess install docker.io dan npm"
sleep 2
clear
git clone https://github.com/oneevil/stratum-ethproxy
cd stratum-ethproxy
npm install
echo -e "[ $hijau OK $putih] Suksess clone ethproxy dan install package yang di perlukan"
sleep 2
clear
rm .env*
clear
clear
echo -e "$hijau------------------------------$putih"
echo -e "$merah !! $putih Cek proxy di host cheker"
echo -e "$merah !! $putih Tanya² atau keperluan lainnya. tele : @faxsenpai"
echo -e "$hijau------------------------------$putih"
echo ""
read -p "$(echo -e "    $kuning IP Proxy: $putih")" ip
read -p "$(echo -e "    $kuning Port : $putih")" port
echo "REMOTE_HOST=$ip
REMOTE_PORT=$port
REMOTE_PASSWORD=x
LOCAL_HOST=0.0.0.0
LOCAL_PORT=443" > .env
sudo ufw enable
sudo ufw allow 443/tcp
sudo ufw allow 443/udp
sudo ufw allow 22
sudo screen -dmS pro npm start
clear
echo -e "       $hijau[ OK ]   $putih Sukses install ethproxy"
echo ""
echo -e "       $putih Your IP Proxy : $ungu$IPVPS:443$putih"
echo ""
read -p "please Enter to check proxy"
sudo screen -r pro

