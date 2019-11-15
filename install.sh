#!/bin/bash
clear

BLACK='\e[30m'
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
CYAN='\e[36m'
WHITE='\e[37m'
NC='\e[0m'
echo ""
 echo -e "${RED}          _    _            _               _____            "         
 echo "         | |  | |          | |             |  __ \           "
 echo "         | |__| | __ _  ___| | _____ _ __  | |__) | __ ___   "
 echo "         |  __  |/ _. |/ __| |/ / _ \ |__| |  ___/ |__/ _ \  "
 echo "         | |  | | (_| | (__|   (   _/ |    | |   | | | (_) | "
 echo "         |_|  |_|\__,_|\___|_|\_\___|_|    |_|   |_|  \___/  "                                               
echo -e "${RED}                  ~ Tools for Hacking by TEAM ${NC}"
echo ""
echo -e "${YELLOW} http://mrlinkerrorsystem.blogspot.com | https://github.com/TeamHackerCyberArmyIndonesia | https://github.com/TeamHackerCyberArmyIndonesia/ ${NC} "
echo ""
echo "---------------------------------------------------------------------------------------"
echo ""
echo -e "${RED}[!] This Tool Must Run As ROOT [!]${NC}"
echo ""
echo -e "${CYAN}[>] Press ENTER to Install mrlinkerrorsystem, CTRL+C to Abort.${NC}"
read INPUT
echo ""

if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="$PREFIX/usr/share/doc/tools-Hacking"
    BIN_DIR="$PREFIX/usr/bin/"
    pkg install -y git python2
else
    INSTALL_DIR="/usr/share/doc/tools-Hacking"
    BIN_DIR="/usr/bin/"
fi

echo "[?] Checking directories...";
if [ -d "$INSTALL_DIR" ]; then
    echo "[!] A Directory tools-Hacking Was Found.. Do You Want To Replace It ? [y/n]:" ;
    read mama
    if [ "$mama" = "y" ]; then
        rm -R "$INSTALL_DIR"
    else
        exit
    fi
fi

echo "[?] Installing ...";
echo "";
git clone https://github.com/TeamHackerCyberArmyIndonesia/tools-Hacking.git "$INSTALL_DIR";
echo "#!/bin/bash
python $INSTALL_DIR/THCA.py" '${1+"$@"}' > tools-Hacking;
chmod +x tools-Hacking;
sudo cp tools-Hacking /usr/bin/;
rm tools-Hacking;


if [ -d "$INSTALL_DIR" ] ;
then
    echo "";
    echo "[?] Successfuly Installed !!! [?]";
    echo "";
    echo "[?]========================================================================[?]";
    echo "[?] ??? All Is Done!! you can execute tool by typing INDONESIA !! ??? [?]";
    echo "[?]========================================================================[?]";
    echo "";
else
    echo "[?] Installation Failed !!! [?]";
    exit
fi