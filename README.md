# 🔐 Encrypt 🔐

> Herramienta creada por XDeadHackerX

<p align="center"><img width="120px" alt="Version" src="https://img.shields.io/badge/version-2.0-yellow.svg?style=for-the-badge"/></p>

[![Encrypt-2-0.png](https://i.postimg.cc/L822TYd3/Encrypt-2-0.png)](https://postimg.cc/567h9t2X)

<p>Vídeo Demo: <a href="#punto1">Pulse aquí</a> o <a href="https://asciinema.org/a/600499">aquí</a></p>

---

<p align="justify"><i>Herramienta enfocada a <strong>Blindar/Proteger</strong> nuestro equipo para que todo rastro que deje en Internet o en Redes Locales sea Falso e Inrasteable <strong>[NO ME HAGO RESPONSABLE DEL MAL USO DE ESTA HERRAMIENTA]</strong></i> </p>

---

## 💡 Funciones 💡

:ballot_box_with_check: **Cambio de IP Pública** (ProtonVPN, NordVPN)

:ballot_box_with_check: **AnonSurf** (Tor Node, Proxys Tor, DNS Tor, Desactivacion de los servicios IPv6)

:ballot_box_with_check: **Cambio de MAC** (Aleatoria)

:ballot_box_with_check: **Cambio de DNS** (Encriptada, no log y rápida)

:ballot_box_with_check: **Redireccionar la Terminal a través de Tor** (Todo el trafico que salga y entre)

:ballot_box_with_check: **Cambio de Mac en Tarjeta de Red Externa** (Aleatoria)

:ballot_box_with_check: **Generar una Identidad Falsa/Fake** (Nombre, Apellidos, Correo Electrónico, Fecha de Nacimiento, DNI, Teléfono Fijo, Teléfono Móvil, Ciudad, Seguridad Social, Tarjeta de Crédito, Caducidad, CVV, Número de Cuenta (IBAN))

:ballot_box_with_check: **Extraer o Eliminar los Metadatos de un archivo**

:ballot_box_with_check: **Eliminar un archivo de forma permanente** (Se ejecutan 38 pasadas sobre el archivo haciendo que este quede totalmente irrecuperable por softwares avanzados de recuperación de archivos eliminados)

:ballot_box_with_check: **Kill Switch (Apagado de Emergencia)** (Apaga el Equipo sin dejar rastro, esto lo hace Desencriptando el equipo (Quitando VPN, MAC, Proxys, DNS, etz), seguidamente elimina de forma permanente los datos de la RAM (Para que no se puedan recuperar) y apaga el Equipo)

## 🛠 Instalar Herramienta 🛠

**1)** sudo apt update && apt -y full-upgrade

**2)** sudo apt-get install git

**3)** git clone https://github.com/XDeadHackerX/Encrypt.git

**4)** cd Encrypt

**5)** chmod 777 encrypt.sh

**6)** bash encrypt.sh

**7)** Marcamos la opción 0 y luego 1 para instalar las dependencias (Solo marcar la primera vez)

**8)** Cuando termine de Instalar las dependecias te preguntara por las credenciales de ProtonVPN, las ingresamos

**9)** Ya podemos disfrutar de la herramienta

## 🎲 Tener en Cuenta 🎲

**[1]** Para poder cambiar la IP Pública debemos tener una cuenta en ProtonVPN

**[2]** Las opciones 3 para que funcionen de forma correcta se recomienda antes de su uso tener la Tarjeta de Red en Modo Monitor

**[3]** En el caso de un error con la VPN (IP Pública) seleccione la opción 0(Configurar Herramienta) y luego la opción 2(Configurar Cuenta ProtonVPN), una vez ah vuelves a introducir las credenciales que te proporciona la página web. (No poner el nombre o correo de nuestra cuenta sino el que nos proporciona ProtonVPN al registrarte)

**[4]** Cada vez que se reinicie o se apague la máquina se quitaran las medidas de seguridad de la opción 2 y 3, por lo que se recomienda Encriptar el equipo cuando se encienda y Desencriptarlo antes de apagarlo para no dejar Huella ni generar errores. 

**[5]** En el Apartado 2 Opción 1 en el desplegable si elegimos la Opción Nord VPN + Proxys Tor en su ejecución nos dará el siguiente error "touch: setting times of '/etc/resolv.conf': Operation not permitted
/etc/init.d/anonsurf: line 167: /etc/resolv.conf: Operation not permitted
", esto se debe a que Nord VPN bloquea el Apartado DNS para que este no se pueda modificar, por lo que todas las protecciones de Tor funcionaran a excepción del DNS. (Este mismo error)

**[6]** Si escogemos la opción de Anonsurf + Vpn la velocidad puede llegar a ser muy muy lenta.

**[7]** En caso de que tengas descargada una versión más antigua, te aconsejo borrarla y volver a instalar la herramienta (+requisitos) para solucionar errores y obtener mejoras, que hacen que la herramienta sea mucho mejor que las versiones anteriores.

## 🎬 Video 🎬 <a name="punto1"></a>

<p align="center"><a href="https://asciinema.org/a/600499" target="_blank"><img src="https://asciinema.org/a/600499.svg" width="700px" /></a><p>

## 🔎 Versiones 🔎

<details>
  <summary>[ v1.0 ]</summary>
  <p align="justify">[#] Versión Original.</p>
</details>
<details>
  <summary>[ v1.1 ]</summary>
  <p align="justify">[#] Nuevo Apartado ([4] Generar una identidad Falsa), Restructuración visual, correcciones visuales, mejoras en la experiencia del usuario.</p>
</details>
<details>
  <summary>[ v1.2 ]</summary>
  <p align="justify">[#] Nuevo Apartado ([5] Extraer/Eliminar Metadatos), esta opción será capaz de extraer todos los metadatos de un archivo con solo dejarlo caer en la terminal y de igual manera podrá eliminarlos.</p>
</details>
<details>
  <summary>[ v1.3 ]</summary>
  <p align="justify">[#] Nuevo Apartado ([6] Eliminar Archivos de Forma permanente), Nueva función dentro del Apartado 2 que muestra la nueva información con la que vas a salir a Internet y Conectarte a una Red Wifi (Nueva IP Publica, nueva MAC, nuevo DNS, lo único que no te muestra es que el tráfico de la terminal está pasando por Tor, pero si está pasando para comprobarlo escribimos "service tor status").</p>
</details>
<details>
  <summary>[ v2.0 ]</summary>
  <p align="justify">[#] Incorporación de Nord VPN, Incorporación de Anonsurf (Tor Node, Proxys Tor, DNS Tor, Desactivación de los servicios IPv6), Tanto la opción de Nord VPN como Anonsurf son opcionales. Nuevo Apartado ([7] Kill Switch (Apagado de Emergencia)) esta nueva opción tiene la función de Apagar el Equipo sin dejar rastro, esto lo hace Desencriptando el equipo (Quitando VPN, MAC, Proxys, DNS, etz), seguidamente elimina de forma permanente los datos de la RAM (Para que no se puedan recuperar) y apaga el Equipo, Correción de Error al instalar las dependencias y Cambio en algunos diseños. Solucionado error en apartados 5 y 6, debido a que si dejabas caer un fichero los comandos no funcionaban con las comillas simples que se le ponían a la ruta. Ahora muestra que "Service tor" está activado (Anteriormente solo mostraba un "Sí" como que estaba activado, el servicio ahora hace y filtra un "service tor status"), optimización del código.</p>
</details>

## ⭐☕ Creado por XDeadHackerX ☕⭐

**Si consideras que este proyecto ha sido útil, te agradecería que me apoyaras dándole una estrella a este repositorio o invitándome a un café.**

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/XDeadHackerX)

Copyright © 2023, XDeadHackerX
