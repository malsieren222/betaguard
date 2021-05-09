# Betaguard - Motion's event detecion & real time notification / BASH BETA concept
Beta di un allarme attivato con Motion.
Ti notifica movimento via call e email, allegando in copia tutti i media catturati(jpeg,avi).

Assicurarsi che la folder dei media di Motion sia "/etc/lib/motion/", atrimenti modificare il path in infono allo script "alarm.sh".

ISTRUZIONI:

1- Rinominare "alarm2.sh" ad "alarm.sh"  
2- Modificare i path in cima allo script betaguard.sh ed ad alarm.sh(inserendo anche i dati del tuo mailer fake per l'invio della email).
3- Aggiungere il proprio numero di telefono in "betaguard.sh", assicurandoti che il telefono sia connesso con il debugging, adb, usb e/o rete. 
4- Sempre per quanto riguarda la call, se é un dual sim, assicurati di avere la sim predefinita di chiamata impostata. Se é la prima volta che connetti il pc a quel device, devi approvare le richieste che arrivano sull'android(anche definire l'app che chiama con ADB(come "telefono","Skype")).


REQUISITI:

credo solo motion:
apt-get install motion

Motion ha un config file molto facile da settare in "/etc/motion/motion.conf", di predefinito per quello che facciamo va bene, -magari portare i frame da 2 a 8-10!?.




Beta of an alarm triggered though Motion. It notifies you the new Motion's event via call and email, attaching a copy of all the captured media (jpeg, avi).

Make sure the Motion media folder is "/ etc / lib / motion /", otherwise change the path to below the "alarm.sh" script.

This is meant to be a basic tool/implementation to be incorporated into a bigger application, which would be installed interactively and setup to be linked with all the local network devices to form a strong security network.
This security network would make use of all the inputs available to the machines, making of them as eyes and ears for your home/location to secure.
This specific bash tool will pair your linux machine to an android machine and when motion is detected:
-email will be sent to the email address specified on script
-phone call to the phone# specified onto script.

INSTRUCTIONS:

1- Rename "alarm2.sh" to "alarm.sh"
2- Change the paths at the top of the betaguard.sh and alarm.sh scripts .
On alarm.sh please make sure that the data of your fake mailer is set
3- Add your phone number in "betaguard.sh", making sure your phone is connected with debugging, adb, usb and / or network. 4- Again regarding the call, if it is a dual sim, make sure you have the default call sim set. If this is the first time you connect your pc to that device, you have to approve the requests that arrive on the android (also define the app that calls with ADB (like "phone", "Skype")).

REQUIREMENTS:

i believe only motion: apt-get install motion

Motion has a very easy config file to set up in "/etc/motion/motion.conf", by default what we do is fine, - maybe bring frames 2 to 8-10!?.
