#!/bin/bash

source requisitos/0.sh

Title
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
				echo
                primera=`echo $meta | head -c 1`
				coma="'"
				if [ $primera = $coma ]
					then
						meta=`echo $meta | cut -c 2- | rev | cut -c2- | rev`
				fi
				sudo exiftool -v -s -G $meta
				;;
			2 )	read -p "[*] Escibe el nombre del archivo con su ruta (Ej: /home/kali/Escritorio/Prueba.png): " meta
				echo
                primera=`echo $meta | head -c 1`
				coma="'"
				if [ $primera = $coma ]
					then
						meta=`echo $meta | cut -c 2- | rev | cut -c2- | rev`
				fi
				sudo exiftool -r -overwrite_original -all= $meta
				;;
			3 )	read -p "[*] Escibe el nombre del archivo con su ruta (Ej: /home/kali/Escritorio/prueba/): " meta
				echo
                primera=`echo $meta | head -c 1`
				coma="'"
				if [ $primera = $coma ]
					then
						meta=`echo $meta | cut -c 2- | rev | cut -c2- | rev`
				fi
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
