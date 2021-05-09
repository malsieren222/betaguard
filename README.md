# betaguard
Beta di un allarme attivato con motion, ti notifica movimento via call e email, allegando i media catturati.

ISTRUZIONI:

1- Rinominare "alarm2.sh" ad "alarm.sh"  
2- Modificare i path in cima allo script betaguard.sh ed ad alarm.sh(inserendo anche i dati del tuo mailer fake per l'invio della email).
3- Aggiungere il proprio numero di telefono in "betaguard.sh", assicurandoti che il telefono sia connesso con il debugging, adb, usb e/o rete. 
4- Sempre per quanto riguarda la call, se é un dual sim, assicurati di avere la sim predefinita di chiamata impostata e per la prima volta che fai questo potresti dover approvare le richieste che arrivano sull'android prima che parta qualunque cosa(anche definire l'app che chiama con ADB(come "telefono","Skype")).


REQUISITI:

credo solo motion:
apt-get install motion

Motion ha un config file molto facile da settare in "/etc/motion/motion.conf", di predefinito per quello che facciamo va bene, magari porterei le frame da 2 a 8-10
