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
echo "                                     ================================"
echo "                                     [0] Configurar Herramienta""     |"
echo "                                     [1] Informacion del Equipo""     |"
echo "                                     [2] Encriptar/Proteger Equipo""  |"
echo "                                     [3] Cambiar MAC Tarjeta de RED"" |"
echo "                                     [4] Generar una identidad Falsa""|"
echo "                                     [5] Extraer/Eliminar Metadatos"" |"
echo "                                     [6] Eliminar Archivos de forma"" |"
echo "                                         Permamente""                 |"
echo "                                     [7] --------> Salir"" <--------- |"
echo "                                     ================================"
echo
echo
read -p "[*] Elige una opcion: " opc1
	case $opc1 in
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
			6 )	bash requisitos/6.sh
				;;
			7 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				bash encrypt.sh
	esac
