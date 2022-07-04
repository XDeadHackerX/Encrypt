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
echo "[3] Desencriptar Equipo"
echo
read -p "[*] Pon la Interfaz de Red que estes utilizando (Ej: eth0): " interfaz
echo
protonvpn disconnect >/dev/null
sudo service tor stop >/dev/null
sudo ifconfig $interfaz down >/dev/null
sudo macchanger -p $interfaz >/dev/null
sudo ifconfig $interfaz up >/dev/null
echo "==========================="
echo "  Desencriptando Equipo"
echo "==========================="
echo "------->""                  |"
sleep 1
echo "------------>""             |"
sleep 1
echo "------------------->""      |"
sleep 1
echo "------------------------->""|"
echo "==========================="
sudo ifconfig $interfaz -promisc >/dev/null
sudo systemctl restart NetworkManager.service >/dev/null
echo
echo
echo "#####################"
echo "[1] Volver al Menu"
echo "[2] Volver a ejecutar"
echo "[3] Salir"
echo "#####################"
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	bash encrypt.sh
				;;
			2 )	bash requisitos/3.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac

