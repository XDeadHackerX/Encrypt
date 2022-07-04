#!/bin/bash

clear
echo 
echo "                               █████████████████████████████████████████████"
echo "                               █▄─▄▄─█▄─▀█▄─▄█─▄▄▄─█▄─▄▄▀█▄─█─▄█▄─▄▄─█─▄─▄─█"
echo "                               ██─▄█▀██─█▄▀─██─███▀██─▄─▄██▄─▄███─▄▄▄███─███"
echo "                               ▀▄▄▄▄▄▀▄▄▄▀▀▄▄▀▄▄▄▄▄▀▄▄▀▄▄▀▀▄▄▄▀▀▄▄▄▀▀▀▀▄▄▄▀▀"
echo "                             __________________________________________________"					
echo "                               ︻デ═一  Created by: XDeadHackerX v1.0  ︻デ═一 " 
echo "          -------------------------------------------------------------------------------------------"
echo "          Cualquier acción y o actividad relacionada con Encrypt es únicamente su responsabilidad"
echo "          -------------------------------------------------------------------------------------------"
echo
echo
echo "[0] Configurar Herramienta"
echo
echo "================================"
echo "[1] Instalar requisitos""        |"
echo "[2] Configurar Cuenta ProtonVPN""|"
echo "[3] Volver al Menu""             |"
echo "================================"
echo
echo
read -p "[*] Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
				sudo apt install macchanger -y
				sudo apt-get install tor -y
				sudo apt-get install speedtest -y
				sudo pip install speedtest-cli
				sudo apt-get install curl -y
				sudo apt install git -y
				cd requisitos
				sudo rm -r linux-cli
				sudo git clone https://github.com/ProtonVPN/linux-cli && cd linux-cli && sudo apt install -y openvpn dialog python3-pip python3-setuptools && python3 -m pip install protonvpn-cli && protonvpn init
				cd ..
				cd ..
				;;
			2 )	echo
				echo "[*] Rellena con el (OpenVPN / IKEv2 username) y el (OpenVPN / IKEv2 password) de tu cuenta ProtonVPN: "
				protonvpn init
				;;
			3 )	bash encrypt.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 1
				bash requisitos/0.sh
	esac
echo
echo
echo "#####################"
echo "[1] Volver al Menu"
echo "[2] Volver a ejecutar"
echo "[3] Salir"
echo "#####################"
echo
read -p "Elige una opcion: " opc2
	case $opc2 in
			1 )	bash encrypt.sh
				;;
			2 )	bash requisitos/0.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
