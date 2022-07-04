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
echo "[1] Informacion del Equipo"
echo
echo "==============================================================================================================================="
echo "☢ Tu IP Publica es la: " `curl -s http:/ifconfig.me`"	                                                                                     |"
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "☢ Tu IP Local es la: " `hostname -I`"                                                                                          |"
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "☢ Tu DNS: " `cat /etc/resolv.conf`"					       |"
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "☢ Tu MAC es la: " `cat /sys/class/net/*/address`"                                                                          |"
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "☢ Tu Sistema Operativo: " `uname -a`"|"
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "☢ Informacion sobre la VPN: "
protonvpn s	
echo "-------------------------------------------------------------------------------------------------------------------------------"
echo "☢ Informacion Tarjeta de Red: "
sudo airmon-ng
echo
sudo iwconfig
echo "==============================================================================================================================="
echo
echo
read -p "[*] Quieres hacer una prueba de velocidad precisa? (si/no): " opc1
echo
	if [ $opc1 = si ]
		then
			speedtest --simple
		else
			bash encrypt.sh
	fi
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
			2 )	bash requisitos/1.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
