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
echo "[5] MAC original Tarjeta de RED"
echo
sudo airmon-ng
echo
read -p "[*] Escribe la interfaz de la Tarjeta de Red en Modo Monitor (Ej: wlan0mon o wlan0): " interfaz2
echo
echo "+++++++++++++++++++++++++++++++"
echo "MAC Actual: " `cat /sys/class/net/$interfaz2/address`
echo "+++++++++++++++++++++++++++++++"
sudo ifconfig $interfaz2 down >/dev/null
sleep 1
sudo macchanger -p $interfaz2 >/dev/null
sudo ifconfig $interfaz2 up >/dev/null
sudo ifconfig $interfaz2 -promisc >/dev/null
echo
echo "==========================="
echo " Poniendo la MAC Original"
echo "==========================="
echo "------->""                  |"
sleep 1
echo "------------>""             |"
sleep 1
echo "------------------->""      |"
sleep 1
echo "------------------------->""|"
echo "==========================="
echo
echo "+++++++++++++++++++++++++++++++++"
echo "MAC Original: " `cat /sys/class/net/$interfaz2/address`
echo "+++++++++++++++++++++++++++++++++"
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
			2 )	bash requisitos/5.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
