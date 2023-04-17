#!/bin/bash

source requisitos/0.sh

Title
echo "[7] Kill Switch (Apagado Emergencia)"
echo
echo "          Funciones:"
echo "================================"
echo "[*] Desencriptar el Equipo""     |"
echo "[*] Borrar de forma Permanente"" |"
echo "    los datos de la RAM""        |"
echo "[*] Apagar el Equipo""           |"
echo "================================"
echo
echo
read -p "Ejecutar? (si/no): " opc1
echo
	if [ $opc1 = si ]
		then
			echo
			read -p "[*] Pon la Interfaz de Red que estes utilizando (Ej: eth0): " interfaz
			echo
			sudo anonsurf stop >/dev/null
			sleep 1
			protonvpn disconnect >/dev/null
			sleep 1
			nordvpn disconnect >/dev/null
			sleep 1
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
            echo "==========================="
			echo "Eliminando datos de la RAM"
			echo "   de forma Permanente"
			echo "==========================="
			echo "------->""                  |"
			sleep 1
			echo "------------>""             |"
			sleep 1
			echo "------------------->""      |"
			sleep 1
			echo "------------------------->""|"
			echo "==========================="
            pandora bomb
            echo "======================="
			echo "    Apagando Equipo"
			echo "======================="
			echo "--->""                  |"
			sleep 1
			echo "-------->""             |"
			sleep 1
			echo "--------------->""      |"
			sleep 1
			echo "--------------------->""|"
			echo "======================="
            shutdown now
		else
			bash encrypt.sh
	fi