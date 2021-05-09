#!/bin/bash
YOURMAINPATH=""      ##modifica questo
PATHLOG="/YOURMAINPATH/guardlog.log"
PATHMOTIONLOG="/var/log/motion/motion.log"
PATHEVENTSLOG="/YOURMAINPATH/eventslog.log"
PATHN="/YOURMAINPATH/guardN"
PATHMOTIONSTARTS="/YOURMAINPATH/motionstarts.log"
PATHMOTIONENDS="/YOURMAINPATH/motionends.log"
LASTRECORDEDN="/YOURMAINPATH/lastrecordedN"
sleep 20
echo "Hai 20 secondi perché motion parta.."
sudo motion &
motionPID=$!
NmotionSTARTS="$(cat $LASTRECORDEDN)"
PhoneN="<NUMERO DI TELEFONO>"       ##il numero di telefono da chiamare quando viene rilevato movimento
ADBIP="192.168.1.100:5555"          ##indirizzo IP della telefono che ti chiama, assicurati di avere adb attivo (usb/network)
while true
do
sleep 5
sudo cp $PATHMOTIONLOG $PATHLOG
echo motion is running on process $motionPID
sudo cat $PATHLOG | grep "event_newfile:" > $PATHEVENTSLOG
sudo cat $PATHLOG | grep "Motion detected" > $PATHMOTIONSTARTS
sudo cat $PATHLOG | grep "End of event" > $PATHMOTIONENDS
sudo cat $PATHMOTIONSTARTS | wc -l > $PATHN 
NmotionSTARTS="$((NmotionSTARTS + 0))"
Ndetected="$(cat $PATHN)"
Ndetected="$((Ndetected + 0))"
echo converted actual N is $Ndetected
echo string Ndetected is $Ndetected  NmotionSTARTS is $NmotionSTARTS	
if [ "$NmotionSTARTS" -ne "$Ndetected" ]
then
echo NmotionStarts is less than $Ndetected
sleep 1
echo attempting connection to $ADBIP
sudo adb connect $ADBIP
sleep 1
CALL=sudo adb -s $ADBIP shell am start -a android.intent.action.CALL -d tel:$PhoneN
echo "calling $PhoneN"
sudo echo "$Ndetected" > $LASTRECORDEDN 
$CALL
sleep 1
NmotionSTARTS=$Ndetected
echo "NmotionSTARTS is now $NmotionsSTARTS"
sudo kill $motionPID
echo mov launch
sudo $YOURMAINPATH/alert.sh &    ##la voce che parlerebbe al ladro
sudo sh $YOURMAINPATH/betaguard.sh
wait
fi
if [ "$NmotionSTARTS" -eq "$Ndetected" ]
then
echo nothing new no mutherfuckers spotted
echo string Ndetected is $Ndetected  NmotionSTARTS is $NmotionSTARTS
fi
echo restarting the shit all over
done

