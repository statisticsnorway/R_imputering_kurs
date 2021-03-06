#E&I: Imputering, Del 1 ------------------------------------------------------------------------------------------------
offer <- data.frame(person = seq(1:20), #personnummer
                    alder = c(47, 45, 19, 21, -24, 41, 36, 50, 53, 17, 53, 21, 18, 34, 44, 45, 54, -55, 29, 32), #alder av personen
                    kjoenn = c("M", "F", "M", "F", "M", "kvinne", "M", "M", "F", "M", "F", "F", "KVinne", "M", "M", "M", "F", "F", "F", "F"), #M - menn, F - kvinne
                    aar_utdanning = c(16, NA, 20, NA, 12, NA, 20, 12, 13, 10, 12, 12, 11, 16, 14, 11, 14, 10, 12, 10), #antall aar for gjennomgaatt utdanning
                    kriminalitetsoffer = c(0, NA, 0, 1, 0, 0, 1, 0, 0, NA, 0, 0, 1, 1, 0, 0, 0, 0, NA, 0), #viser om man har v?rt en kriminalitets offer #1 - ja, 0 - nei
                    voldskriminalitetsoffer = c(0, 1, 0, 1, 1, 0, NA, 0, NA, NA, 0, 0, NA, 0, 0, 0, 0, 0, 0, 0)) #viser om man har v?rt en voldskriminalitetsoffer  #1 - ja, 0 - nei

#Datasett er basert på Tabell 8.3 fra L.Lohr "Sampling Design and Analysis" bok
#Task1.1----
#a. Sjekk hvor mange missing(NA) verdier finnes i datasett offer og for hvilke variabler. 
#b. Se om det finnes negative verdier(<0) der de ikke skulle vaere.   
#c. Se om >unifisering< av kategorikal variabel trenges
#d. finnes det uteligger eller verdier som ikke henger sammen i arr_utdanning?
#!tips: Det er mulig aa kj�re summary() og plot alder vs aar_utdanning eller validator() og confront() fra pakke validate 

#Task1.2----
#med bruk av dcmodify pakke spesifiser modifier og rett feil som du har funnet i Task1.b og c. Sjekk med summary om data er korrekt naa. 
#Der aar_utdanning var st�rre enn alder (fra Task1.1.d) sett NA verdi
#Lag resultater i samme datasett

#Task1.3----
#Hvis voldskriminalitetsoffer likt 1, da m? kriminalitetsoffer vaere 1, og hvis kriminalitetsoffer likt 0 da voldskriminalitetsoffer maa vaere 0 og. 
#korrekt feil & fyll inn manglende verdier med bruk av disse deduktive regler
#pr�v aa bruke modify_so
#Lag resultater i samme datasett

#Task1.4----
#imputer aar_utdaning der mangler verdier. Bruk gjennomsnitt-imputering.
#Lag resultater til en ny datasett: offer_1_4

#E&I: Imputering, Del 2 ------------------------------------------------------------------------------------------------

#Task2.1----
#Del personer i seller og bruk stratifisert gjennomsnitt-imputering for aar_utdanning. Bruk pakke simputation
#Grupper spesifiseres etter kj?nn og alder <=34 & > 34
#Lag resultater til en ny datasett: offer_2_1

#Task2.2----
#Bruk samme datasett som i �velser 1, Task 4. Bruk naermest nabo hotdeck imputering for variabel kriminalitetsoffer og voldskriminalitetsoffer.
#Bruk alder og kj�nn som hjelpevariabler(forklaringvariabler) for � beregne avstand
#Lag resultater til en ny datasett: offer_2_2

#Task2.3----
#Bruk samme datasett som i �velser 1, Task 4. Bruk Linear regresjon imputering for variabel kriminalitetsoffer og voldskriminalitetsoffer.
#Bruk alder og kj�nn som hjelpevariabler(forklaringvariabler)
#Lag resultater til en ny datasett: offer_2_3

#Task2.4----
#Samme som i 2.3, men bruk predictive mean matching(pmm)
#Lag resultater til en ny datasett: offer_2_4

#E&I: Imputering, Del 3 ------------------------------------------------------------------------------------------------

#Task1----
#Bruk r� offerdata og trenkk endringer i Task1.2, 1.3 og med bruk av lumberjack pakke svar p� de neste sp�rsm�lene:
#a.finn prosent personer som fikk misnt 1 editering
#b.finn navn og antall variabler som ble editert
#c.finn prosent editerte i hver variabel fra b.
#d.finn steget der endringen i totalen av aar_utdaning ble den største