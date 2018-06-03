#!/bin/bash

# Tworze zmienne z danymi kodami formatow
red="\e[31m"
green="\e[32m"
normal="\e[0m"

for domain in `cat domains_list`; do #iteruje po każdym zwróconym wierszu polecenia - w tym przypadku są to adresy domenowe

  result=`ping -c 1 -W 2 $domain 2> /dev/null | grep "64 bytes"` 
  # parametr c oznacza ilość wykonanych pingów a parametr W oznacza maksymalny czas oczekiwania na odpowiedź
  # 2> /dev/null oznacza przekierowanie stderr na wirtualne urządzenie null, kasujące komunikat błędu.
  # | grep "64 bytes" oznacza filtrowanie odpowiedzi pingu, jeżeli w odpowiedzi znajdzie się fraza 64 bytes 
  # (taka fraza znajduje się przy domyślnym poprawnym połączeniu) zapisuje cały wiersz łącznie z tą frazą
  # do zmiennej result, w przypadku braku połączenia zmienna ta pozostanie pusta
  
  if [ "$result" ]; then 
    echo -e "$green Udalo sie polaczyc z: $normal$domain"
    else
      echo -e "$red Nie udalo sie polaczyc z: $normal$domain"
  fi;
  
  # if [ "$result" ] - "$result" - zamykam zmienną result w cudzysłowie aby traktować ją jako ciąg znaków, jednocześnie
  # wykorzystuję fakt, że w bashu - jak i w wielu językach powłokowych oraz ogólnie w wielu językach programowania
  # pusty ciąg znaków jest traktowany jako logiczny fałsz a w naszym przypadku zmienna result jest albo tylko ciągiem 
  # znaków przy poprawnym połączeniu albo tylko pusta przy braku połączenia.

done;
