#!/bin/bash

source requisitos/0.sh

Title
echo "[3] Cambiar MAC Tarjeta de RED"
echo
echo "================================"
echo "[1] Cambiar MAC Tarjeta de RED"" |"
echo "[2] MAC original Tarjeta de RED""|"
echo "[3] Volver al Menu""             |"
echo "================================"
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
				sudo airmon-ng 
				echo
				read -p "[*] Escribe la interfaz de la Tarjeta de Red en Modo Monitor (Ej: wlan0mon o wlan0): " interfaz2
				echo
				echo "+++++++++++++++++++++++++++++++++"
				echo "MAC Original: " `cat /sys/class/net/$interfaz2/address`
				echo "+++++++++++++++++++++++++++++++++"
				sudo ifconfig $interfaz2 promisc >/dev/null
				sudo ifconfig $interfaz2 down >/dev/null
				sleep 2
				sudo macchanger -a $interfaz2 >/dev/null
				sudo ifconfig $interfaz2 up >/dev/null
				echo
				echo "==========================="
				echo "Cambiando la MAC de $interfaz2"
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
				echo "++++++++++++++++++++++++++++++"
				echo "Nueva MAC: " `cat /sys/class/net/$interfaz2/address`
				echo "++++++++++++++++++++++++++++++"
				;;
			2 )	echo
				sudo airmon-ng
				echo
				read -p "[*] Escribe la interfaz de la Tarjeta de Red en Modo Monitor (Ej: wlan0mon o wlan0): " interfaz2
				echo
				echo "+++++++++++++++++++++++++++++++"
				echo "MAC Actual: " `cat /sys/class/net/$interfaz2/address`
				echo "+++++++++++++++++++++++++++++++"
				sudo ifconfig $interfaz2 down >/dev/null
				sleep 2.5
				sudo ifconfig $interfaz2 promisc >/dev/null
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
				;;
			3 )	bash encrypt.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 1
				bash requisitos/3.sh
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
			2 )	bash requisitos/3.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac

