#!/bin/bash
/
source requisitos/0.sh

Title
echo "[4] Generar una identidad Falsa"
echo
echo "=================================================================="
echo "[1] Nombre, Apellidos, Correo Electronico, Fecha de Nacimiento""   |"
echo "[2] DNI, Telefono Fijo, Telefono Movil, Ciudad, Seguridad Social"" |"
echo "[3] Tarjeta de Credito, Caducidad, CVV, Numero de Cuenta (IBAN)""  |"
echo "[4] -------------------------> TODO"" <--------------------------- |"
echo "[5] Volver al Menu""                                               |"
echo "=================================================================="
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Pon el numero de Identidades Falsas quieres generar (Ej: 3): " numero
				echo
				sudo python requisitos/FakeData.py -n $numero
				;;
			2 )	echo
				read -p "[*] Pon el numero de Identidades Falsas quieres generar (Ej: 3): " numero
				echo
				sudo python requisitos/FakeData.py -n $numero -e
				;;
			3 )	echo
				read -p "[*] Pon el numero de Identidades Falsas quieres generar (Ej: 3): " numero
				echo
				sudo python requisitos/FakeData.py -n $numero -b
				;;
			4 )	echo
				read -p "[*] Pon el numero de Identidades Falsas quieres generar (Ej: 3): " numero
				echo
				sudo python requisitos/FakeData.py -n $numero && sudo python requisitos/FakeData.py -n $numero -e && sudo python requisitos/FakeData.py -n $numero -b
				;;
			5 )	bash encrypt.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 1
				bash requisitos/4.sh
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
			2 )	bash requisitos/4.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
