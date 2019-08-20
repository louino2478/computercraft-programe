--reacteur mekanism!!!!!

local pro
locale la
heure locale
m = périphérique . wrap ( "monitor_0" )
r = périphérique . wrap ( "Reactor Logic Adapter_1" )
l = périphérique . wrap ( "Laser Amplifier_1" )
chat = périphérique . wrap ( "chatBox_0" )
h = périphérique . wrap ( "timeSensor_0" )
 
m . setTextColor ( couleurs . blanc )
m . clear ( )
m . setCursorPos ( 1 , 1 )
m . écrire ( "réacteur controleur 2000" )
m . setCursorPos ( 1 , 2 )
m . write ( "version 1.2" )
m . setCursorPos ( 1 , 4 )
m . write ( "ce programme est pour les" )
m . setCursorPos ( 1 , 5 )
m . écrire ( "de mekanime" )
m . setCursorPos ( 1 , 7 )
m . write ( "coder par louino" )
dormir ( 5 )
--fin du splach screen
m . clear ( )
 
temps = h . getDate ( )
handle = fs . open ( "log / log1" , "a" )
gérer . writeLine ( "" )
gérer . écrire ( heure . jour )
gérer . écrire ( "/" )
gérer . écrire ( temps . mois )
gérer . écrire ( "/" )
gérer . écrire ( temps . année )
gérer . écrire ( "-" )
gérer . écrire ( heure . minute )
gérer . écrire ( ":" )
gérer . écriture ( heure . heure )
gérer . write ( "--- programe lancer" )
gérer . fermer ( )
 
tout en vrai do
 
--reacteur sur?
m . setCursorPos ( 1 , 1 )
m . setTextColor ( couleurs . blanc )
m . écrire ( "reacteur:" )
si r . isIgnited ( ) == true alors
 m . setTextColor ( couleurs . vert )
 m . écrire ( "ON" )
autre
 m . setTextColor ( couleurs . rouge )
 m . écrire ( "OFF" )
fin
--reacteur production
m . setCursorPos ( 1 , 2 )
m . setTextColor ( couleurs . blanc )
m . écrire ( "production:" )
m . setTextColor ( couleurs . gris )
pro = r . getProducing ( ) / 25
si pro < 1000 alors
 m . write ( r . getProducing ( ) / 25 )
 m . setCursorPos ( 17 , 2 )
 m . écrire ( "RF / t" )
fin
si pro > 1000 alors
 m . setCursorPos ( 14 , 2 )
 m . écrire ( r . getProducing ( ) / 25 / 100 )
 m . setCursorPos ( 17 , 2 )
 m . écrire ( "kRF / t" )
fin
si pro > 100000 alors
 m . setCursorPos ( 14 , 2 )
 m . écrire ( r . getProducing ( ) / 25 / 100000 )
 m . setCursorPos ( 17 , 2 )
 m . écrire ( "mRF / t" )
fin
--lazer stockage enplifier
m . setCursorPos ( 1 , 3 )
m . setTextColor ( couleurs . blanc )
m . écrire ( "laser energie:" )
m . setTextColor ( couleurs . gris )
la = l . getEnergy ( ) / 25
si la < 1000 alors
 m . write ( l . getEnergy ( ) / 25 )
 m . setCursorPos ( 20 , 3 )
 m . écrire ( "RF" )
fin
si la > 1000 alors
 m . setCursorPos ( 17 , 3 )
 m . écrire ( l . getEnergy ( ) / 25 / 100 )
 m . setCursorPos ( 20 , 3 )
 m . écrire ( "kRF" )
fin
si la > 100000 alors
 m . setCursorPos ( 17 , 3 )
 m . écrire ( l . getEnergy ( ) / 25 / 100000 )
 m . setCursorPos ( 20 , 3 )
 m . écrire ( "mRF" )
fin
si la > 100000000 alors
 m . setCursorPos ( 17 , 3 )
 m . écrire ( l . getEnergy ( ) / 25 / 100000000 )
 m . setCursorPos ( 20 , 3 )
 m . écrire ( "gRF" )
fin
- stat amplificateur laser
 m . setCursorPos ( 1 , 4 )
 m . setTextColor ( couleurs . blanc )
 m . write ( "laser stat:" )
 m . setCursorPos ( 14 , 4 )
si l . getEnergy ( ) / 25 / 100.000.000 > 1 puis
 m . setTextColor ( couleurs . jaune )
autre
 m . setTextColor ( couleurs . orange )
fin
 m . écrire ( "CHARGE EN COUR" )
si l . getEnergy ( ) == 0 alors
 m . setCursorPos ( 14 , 4 )
 m . setTextColor ( couleurs . rouge )
 m . écrire ( "DECHARGER" )
fin
si l . getEnergy ( ) == l . getMaxEnergy ( ) puis
 m . setCursorPos ( 14 , 4 )
 m . setTextColor ( couleurs . vert )
 m . écrire ( "CHARGEE" )
 Redstone . setOutput ( "back" , true )
autre
 Redstone . setOutput ( "retour" , false )
fin
 
--demarage réacteur
si r . isIgnited ( ) == false alors
 m . setCursorPos ( 9 , 12 )
 m . setTextColor ( couleurs . blanc )
 m . écrire ( "démarrer le réacteur" )
 si rs . getAnalogInput ( "right" ) ~ = 0 alors
  si l . getEnergy ( ) == l . getMaxEnergy ( ) puis
   m . setCursorPos ( 1 , 9 )
   m . ecrire ( "demarage du reacteur" )
   discuter . say ( "le réacteur s'allume" )
   temps = h . getDate ( )
   handle = fs . open ( "log / log1" , "a" )
   gérer . writeLine ( "" )
   gérer . écrire ( heure . jour )
   gérer . écrire ( "/" )
   gérer . écrire ( temps . mois )
   gérer . écrire ( "/" )
   gérer . écrire ( temps . année )
   gérer . écrire ( "-" )
   gérer . écrire ( heure . minute )
   gérer . écrire ( ":" )
   gérer . écriture ( heure . heure )
   gérer . écrire ( "--- le réacteur vient de s'alumer" )
   gérer . fermer ( )
   rs . setOutput ( "bottom" , true )
   r . setInjectionRate ( 4 )
   dormir ( 10 )
   rs . setOutput ( "left" , true )
   dormir ( 2 )
   rs . setOutput ( "left" , false )
   dormir ( 1 )
   rs . setOutput ( "bottom" , false )
   m . clear ( )
  autre
   m . setCursorPos ( 1 , 9 )
   m . setBackgroundColor ( couleurs . rouge )
   m . setTextColor ( couleurs . blanc )
   m . écrire ( "il y a pas asser d'energie" )
   m . setCursorPos ( 1 , 10 )
   m . écrire ( "dans les laser" )
   m . setBackgroundColor ( couleurs . noir )
   dormir ( 5 )
   m . clear ( )
  fin
 fin
fin
si r . isIgnited ( ) == true alors
 m . setCursorPos ( 9 , 12 )
 m . setTextColor ( couleurs . jaune )
 m . écrire ( "arrêter le réacteur" )
 si rs . getAnalogInput ( "right" ) ~ = 0 alors
  si l . getEnergy ( ) == l . getMaxEnergy ( ) puis
   m . setCursorPos ( 1 , 6 )
   m . setTextColor ( couleurs . blanc )
   m . écrire ( "arret en cours ..." )
   discuter . say ( "le réacteur s'arrette" )
   temps = h . getDate ( )
   handle = fs . open ( "log / log1" , "a" )
   gérer . writeLine ( "" )
   gérer . écrire ( heure . jour )
   gérer . écrire ( "/" )
   gérer . écrire ( temps . mois )
   gérer . écrire ( "/" )
   gérer . écrire ( temps . année )
   gérer . écrire ( "-" )
   gérer . écrire ( heure . minute )
   gérer . écrire ( ":" )
   gérer . écriture ( heure . heure )
   gérer . écrire ( "--- le reacteur vient de s'etaindre" )
   gérer . fermer ( )
   r . setInjectionRate ( 0 )
   dormir ( 30 )
   r . setInjectionRate ( 2 )
   m . clear ( )
  autre
   m . setCursorPos ( 1 , 6 )
   m . setBackgroundColor ( couleurs . rouge )
   m . setTextColor ( couleurs . blanc )
   m . écrire ( "il est pas conseiller de" )
   m . setCursorPos ( 1 , 7 )
   m . write ( "stoper le reacteur alors que" )
   m . setCursorPos ( 1 , 8 )
   m . écrire ( "les laser sont pas plein" )
   m . setBackgroundColor ( couleurs . noir )
   dormir ( 5 )
   m . clear ( )
  fin
 fin
fin
 
 
 
--fin du programe
dormir ( 0.5 )
fin