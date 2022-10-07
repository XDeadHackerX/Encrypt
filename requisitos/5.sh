#!/bin/bash

clear
echo 
echo "                               █████████████████████████████████████████████"
echo "                               █▄─▄▄─█▄─▀█▄─▄█─▄▄▄─█▄─▄▄▀█▄─█─▄█▄─▄▄─█─▄─▄─█"
echo "                               ██─▄█▀██─█▄▀─██─███▀██─▄─▄██▄─▄███─▄▄▄███─███"
echo "                               ▀▄▄▄▄▄▀▄▄▄▀▀▄▄▀▄▄▄▄▄▀▄▄▀▄▄▀▀▄▄▄▀▀▄▄▄▀▀▀▀▄▄▄▀▀"
echo "                             __________________________________________________"					
echo "                               ︻デ═一  Created by: XDeadHackerX v2.0  ︻デ═一 " 
echo "          -------------------------------------------------------------------------------------------"
echo "          Cualquier acción y o actividad relacionada con Encrypt es únicamente su responsabilidad"
echo "          -------------------------------------------------------------------------------------------"
echo
echo
echo "[5] Extraer/Eliminar Metadatos"
echo
echo "========================================="
echo "1º Extraer Metadatos de un fichero""      |"
echo "-----------------------------------------"
echo "2º Eliminar Metadatos de un fichero""     |"
echo "-----------------------------------------"
echo "3º Eliminar Metadatos de un directorio""  |"
echo "========================================="
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	read -p "[*] Escibe el nombre del archivo con su ruta (Ej: /home/kali/Escritorio/Prueba.png): " meta
				sudo exiftool -v -s -G $meta
				;;
			2 )	read -p "[*] Escibe el nombre del archivo con su ruta (Ej: /home/kali/Escritorio/Prueba.png): " meta
				sudo exiftool -r -overwrite_original -all= $meta
				;;
			3 )	read -p "[*] Escibe el nombre del archivo con su ruta (Ej: /home/kali/Escritorio/prueba/): " meta
				sudo exiftool -r -overwrite_original -all= $meta
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 1
				bash requisitos/5.sh
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
			2 )	bash requisitos/5.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
