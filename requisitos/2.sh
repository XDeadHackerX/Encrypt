#!/bin/bash

clear
echo 
echo "                               █████████████████████████████████████████████"
echo "                               █▄─▄▄─█▄─▀█▄─▄█─▄▄▄─█▄─▄▄▀█▄─█─▄█▄─▄▄─█─▄─▄─█"
echo "                               ██─▄█▀██─█▄▀─██─███▀██─▄─▄██▄─▄███─▄▄▄███─███"
echo "                               ▀▄▄▄▄▄▀▄▄▄▀▀▄▄▀▄▄▄▄▄▀▄▄▀▄▄▀▀▄▄▄▀▀▄▄▄▀▀▀▀▄▄▄▀▀"
echo "                             __________________________________________________"					
echo "                               ︻デ═一  Created by: XDeadHackerX v1.3  ︻デ═一 " 
echo "          -------------------------------------------------------------------------------------------"
echo "          Cualquier acción y o actividad relacionada con Encrypt es únicamente su responsabilidad"
echo "          -------------------------------------------------------------------------------------------"
echo
echo
echo "[2] Encriptar Equipo"
echo
echo "================================"
echo "[1] Encriptar Equipo""           |"
echo "[2] Desencriptar Equipo""        |"
echo "[3] Volver al Menu""             |"
echo "================================"
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Pon la Interfaz de Red que estes utilizando (Ej: eth0): " interfaz
				echo
				sudo ifconfig $interfaz promisc >/dev/null
				sudo ifconfig $interfaz down >/dev/null
				sleep 1
				sudo macchanger -a $interfaz >/dev/null
				sudo ifconfig $interfaz up >/dev/null
				echo "======================="
				echo "     Cambiando Mac"
				echo "======================="
				echo "--->""                  |"
				sleep 1
				echo "-------->""             |"
				sleep 1
				echo "--------------->""      |"
				sleep 1
				echo "--------------------->""|"
				echo "======================="
				echo
				echo "======================="
				echo " Cambiando IP Publica"
				echo "======================="
				echo "--->""                  |"
				sleep 1
				echo "-------->""             |"
				sleep 1
				echo "--------------->""      |"
				sleep 1
				echo "--------------------->""|"
				echo "======================="
				echo
				protonvpn c
				clear
				echo 
				echo "                               █████████████████████████████████████████████"
				echo "                               █▄─▄▄─█▄─▀█▄─▄█─▄▄▄─█▄─▄▄▀█▄─█─▄█▄─▄▄─█─▄─▄─█"
				echo "                               ██─▄█▀██─█▄▀─██─███▀██─▄─▄██▄─▄███─▄▄▄███─███"
				echo "                               ▀▄▄▄▄▄▀▄▄▄▀▀▄▄▀▄▄▄▄▄▀▄▄▀▄▄▀▀▄▄▄▀▀▄▄▄▀▀▀▀▄▄▄▀▀"
				echo "                             __________________________________________________"					
				echo "                               ︻デ═一  Created by: XDeadHackerX v1.3  ︻デ═一 " 
				echo "          -------------------------------------------------------------------------------------------"
				echo "          Cualquier acción y o actividad relacionada con Encrypt es únicamente su responsabilidad"
				echo "          -------------------------------------------------------------------------------------------"
				echo
				echo
				echo "[#] Realizando ultimas configuraciones"
				echo
				sudo echo nameserver 1.1.1.1 > /etc/resolv.conf
				sudo /etc/init.d/networking restart >/dev/null
				echo "======================="
				echo "    Cambiando DNS"
				echo "======================="
				echo "--->""                  |"
				sleep 1
				echo "-------->""             |"
				sleep 1
				echo "--------------->""      |"
				sleep 1
				echo "--------------------->""|"
				echo "======================="
				sleep 1
				echo
				sudo service tor start >/dev/null
				echo "==========================="
				echo "Redireccionando la Terminal"
				echo "     a traves de Tor"
				echo "==========================="
				echo "------->""                  |"
				sleep 1
				echo "------------>""             |"
				sleep 1
				echo "------------------->""      |"
				sleep 1
				echo "------------------------->""|"
				echo "==========================="
				sleep 2
				clear
				echo 
				echo "                               █████████████████████████████████████████████"
				echo "                               █▄─▄▄─█▄─▀█▄─▄█─▄▄▄─█▄─▄▄▀█▄─█─▄█▄─▄▄─█─▄─▄─█"
				echo "                               ██─▄█▀██─█▄▀─██─███▀██─▄─▄██▄─▄███─▄▄▄███─███"
				echo "                               ▀▄▄▄▄▄▀▄▄▄▀▀▄▄▀▄▄▄▄▄▀▄▄▀▄▄▀▀▄▄▄▀▀▄▄▄▀▀▀▀▄▄▄▀▀"
				echo "                             __________________________________________________"					
				echo "                               ︻デ═一  Created by: XDeadHackerX v1.3  ︻デ═一 " 
				echo "          -------------------------------------------------------------------------------------------"
				echo "          Cualquier acción y o actividad relacionada con Encrypt es únicamente su responsabilidad"
				echo "          -------------------------------------------------------------------------------------------"
				echo
				echo
				echo "[#] Nuevos datos proporcionados para proteger su Identidad"
				echo
				echo "++++++++++++++++++++++++++++++++++++"
				echo "☢ Nueva IP + Info VPN: "
				protonvpn s
				echo "++++++++++++++++++++++++++++++++++++"
				echo "☢ Nueva MAC: `cat /sys/class/net/$interfaz/address`"
				echo "++++++++++++++++++++++++++++++++++++"
				echo "☢ Nuevo DNS: `cat /etc/resolv.conf`"
				echo "++++++++++++++++++++++++++++++++++++"
				;;
			2 )	echo
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
				;;
			3 )	bash encrypt.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 1
				bash requisitos/2.sh
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
			2 )	bash requisitos/2.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
