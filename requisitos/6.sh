#!/bin/bash

source requisitos/0.sh

Title
echo "[6] Eliminar Archivos de forma Permamente"
echo
read -p "[*] Escibe el nombre del archivo con su ruta o deja caer el archivo en la Terminal (Ej: /home/kali/Escritorio/Prueba.png): " archivo
echo
echo "[#] Este proceso puede llegar a tardar dependiendo del archivo"
echo
echo
primera=`echo $archivo | head -c 1`
coma="'"
if [ $primera = $coma ]
	then
		archivo=`echo $archivo | cut -c 2- | rev | cut -c2- | rev`
fi
sudo srm -vz -r $archivo
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
			2 )	bash requisitos/6.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
