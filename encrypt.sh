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
echo "================================"
echo "[0] Configurar Herramienta""     |"
echo "[1] Informacion del Equipo""     |"
echo "[2] Encriptar Equipo""           |"
echo "[3] Desencriptar Equipo""        |"
echo "[4] Cambiar MAC Tarjeta de RED"" |"
echo "[5] MAC original Tarjeta de RED""|"
echo "[6] Salir""                      |"
echo "================================"
echo
echo
read -p "[*] Elige una opcion: " opc
	case $opc in
			0 )	bash requisitos/0.sh
				;;
			1 )	bash requisitos/1.sh
				;;
			2 )	bash requisitos/2.sh
				;;
			3 )	bash requisitos/3.sh
				;;
			4 )	bash requisitos/4.sh
				;;
			5 )	bash requisitos/5.sh
				;;
			6 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				bash encrypt.sh
	esac
