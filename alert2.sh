#!/bin/bash 
##miraccomando usa un indirizzo email di cui puoi permetterti di avere la pass salvata su file xD
##se usi gmail ricordati di attivare le impostazioni di sicurezza dell'email per pertmettere invio da app esterne
TuoIndirizzoEmail="<indirizzo-email>"
Destinatario="<mail su cui ricevere notifica>"
Oggetto=""
CorpoMessaggio=""
PATHFOLDER="lo stesso path usato su betaguard chiamato YOURMAINPATH"
username="se hai marcobarca@gmail.com é marcobarca"
password=""
#modifica -s se non usi gmail per inviare email dallo script
nohup sudo mpv $PATHFOLDER/alert.mp3 --no-video &
sendemail -f $TuoIndirizzoEmail -t $Destinatario -u $Oggetto -m $CorpoMessaggio -a "/var/lib/motion/0"* -s smtp.googlemail.com:587 -xu $username -xp $password -o tls:yes
wait
sudo rm /var/lib/motion/*     
##ad ogni restart di funzione la folder media viene svuotata
wait

