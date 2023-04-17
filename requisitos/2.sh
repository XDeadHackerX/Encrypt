#!/bin/bash

source requisitos/0.sh

Title
echo "[2] Encriptar/Proteger Equipo"
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
				echo "Proxys Tor= Tor node + Proxys, DNS"
				echo
				echo "================================"
				echo "[1] Proton VPN""                 |"
				echo "[2] Proton VPN + Proxys Tor""    |"
				echo "[3] Nord VPN""                   |"
				echo "[4] Nord VPN + Proxys Tor""      |"
				echo "[5] Anonsurf (Proxys Tor)""      |"
				echo "================================"
				echo
				read -p "Elige una opcion: " opc1
					case $opc1 in
							1 )	echo
								echo
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
								Title
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
								Title
								echo "[#] Nuevos datos proporcionados para proteger su Identidad"
								echo
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Nueva IP + Info VPN: "
								protonvpn s
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Nueva MAC: `cat /sys/class/net/$interfaz/address`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Nuevo DNS: `cat /etc/resolv.conf`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Terminal redirecionada por Tor:`timeout 1s service tor status | awk 'FNR<= 3{print}' | awk 'FNR >= 3{print}'`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Proxys Tor + DNS (Anonsurf): No"
								echo "+++++++++++++++++++++++++++++++++++++"
								;;
							2 )	echo
								echo
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
								Title
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
								sleep 1
								echo
								sudo anonsurf start >/dev/null
								echo "====================================="
								echo "Activando Tor Node/Proxys Tor, DNS y"
								echo "  desactivando los servicios IPv6"
								echo "====================================="
								echo "-------->""                           |"
								sleep 1
								echo "---------------->""                   |"
								sleep 1
								echo "------------------------->""          |"
								sleep 1
								echo "----------------------------------->""|"
								echo "====================================="
								sleep 2
								Title
								echo "[#] Nuevos datos proporcionados para proteger su Identidad"
								echo
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Nueva IP + Info VPN: "
								protonvpn s
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ IP Real Tor Node: `curl -s http:/ifconfig.me`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Nueva MAC: `cat /sys/class/net/$interfaz/address`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Nuevo DNS: `cat /etc/resolv.conf`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Terminal redirecionada por Tor:`timeout 1s service tor status | awk 'FNR<= 3{print}' | awk 'FNR >= 3{print}'`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Proxys Tor + DNS (Anonsurf): Si"
								echo "+++++++++++++++++++++++++++++++++++++"
								;;
							3 )	echo
								echo
								read -p "[*] Pon la Interfaz de Red que estes utilizando (Ej: eth0): " interfaz
								echo
								nordvpn countries
								echo
								read -p "[*] Copia y pega a continuacion uno de los siguientes Paises para conectarte: " pais
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
								nordvpn connect $pais
								Title
								echo "[#] Realizando ultimas configuraciones"
								echo
								#NordVpn no permite cambiar el DNS, pone el suyo propio
								#sudo echo nameserver 1.1.1.1 > /etc/resolv.conf
								#sudo /etc/init.d/networking restart >/dev/null
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
								Title
								echo "[#] Nuevos datos proporcionados para proteger su Identidad"
								echo
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Nueva IP + Info VPN: "
								nordvpn status
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Nueva MAC: `cat /sys/class/net/$interfaz/address`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Nuevo DNS: `cat /etc/resolv.conf`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Terminal redirecionada por Tor:`timeout 1s service tor status | awk 'FNR<= 3{print}' | awk 'FNR >= 3{print}'`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Proxys Tor + DNS (Anonsurf): No"
								echo "+++++++++++++++++++++++++++++++++++++"
								;;
							4 )	echo
								echo
								read -p "[*] Pon la Interfaz de Red que estes utilizando (Ej: eth0): " interfaz
								echo
								nordvpn countries
								echo
								read -p "[*] Copia y pega a continuacion uno de los siguientes Paises para conectarte: " pais
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
								nordvpn connect $pais
								sleep 4
								Title
								echo "[#] Realizando ultimas configuraciones"
								echo
								#NordVpn no permite cambiar el DNS, pone el suyo propio
								#sudo echo nameserver 1.1.1.1 > /etc/resolv.conf
								#sudo /etc/init.d/networking restart >/dev/null
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
								sleep 1
								echo
								sudo anonsurf start >/dev/null
								echo "====================================="
								echo "  Activando Tor Node/Proxys Tor, y"
								echo "  desactivando los servicios IPv6"
								echo "====================================="
								echo "-------->""                           |"
								sleep 1
								echo "---------------->""                   |"
								sleep 1
								echo "------------------------->""          |"
								sleep 1
								echo "----------------------------------->""|"
								echo "====================================="
								sleep 2
								Title
								echo "[#] Nuevos datos proporcionados para proteger su Identidad"
								echo
								echo "++++++++++++++++++++++++++++++++++++++"
								echo "☢ Nueva IP + Info VPN: "
								nordvpn status
								echo "++++++++++++++++++++++++++++++++++++++"
								echo "☢ IP Real Tor Node: `curl -s http:/ifconfig.me`"
								echo "++++++++++++++++++++++++++++++++++++++"
								echo "☢ Nueva MAC: `cat /sys/class/net/$interfaz/address`"
								echo "++++++++++++++++++++++++++++++++++++++"
								echo "☢ Nuevo DNS: `cat /etc/resolv.conf`"
								echo "++++++++++++++++++++++++++++++++++++++"
								echo "☢ Terminal redirecionada por Tor:`timeout 1s service tor status | awk 'FNR<= 3{print}' | awk 'FNR >= 3{print}'`"
								echo "++++++++++++++++++++++++++++++++++++++"
								echo "☢ Proxys Tor + Tor node (Anonsurf): Si"
								echo "++++++++++++++++++++++++++++++++++++++"
								;;
							5 )	echo
								echo
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
								Title
								echo "[#] Realizando ultimas configuraciones"
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
								sleep 1
								echo
								sudo anonsurf start >/dev/null
								echo "====================================="
								echo "Activando Tor Node/Proxys Tor, DNS y"
								echo "  desactivando los servicios IPv6"
								echo "====================================="
								echo "-------->""                           |"
								sleep 1
								echo "---------------->""                   |"
								sleep 1
								echo "------------------------->""          |"
								sleep 1
								echo "----------------------------------->""|"
								echo "====================================="
								sleep 2
								Title
								echo "[#] Nuevos datos proporcionados para proteger su Identidad"
								echo
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Nueva IP + Info VPN: "
								protonvpn s
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ IP Real Tor Node: `curl -s http:/ifconfig.me`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Nueva MAC: `cat /sys/class/net/$interfaz/address`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Nuevo DNS: `cat /etc/resolv.conf`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Terminal redirecionada por Tor:`timeout 1s service tor status | awk 'FNR<= 3{print}' | awk 'FNR >= 3{print}'`"
								echo "+++++++++++++++++++++++++++++++++++++"
								echo "☢ Proxys Tor + DNS (Anonsurf): Si"
								echo "+++++++++++++++++++++++++++++++++++++"
								;;
							* )	echo
								echo "$RRPLY No es una opcion valida"
								sleep 1
								bash requisitos/2.sh
					esac
				;;
			2 )	echo
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
