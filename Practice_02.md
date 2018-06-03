# Skrypt sprawdzający połączenie z danymi adresami w pliku domains_list

Należy stworzyć skrypt, ktory wczytuje kolejne adresy domenowe z pliku [domains_list](https://github.com/wojtek2kdev/Bash-lesson/blob/master/practice/domains_list) i sprawdza połączenie międy naszym komputerem a serwerem pod daną nazwą domenową. Na wyjściu naszego skryptu powinniśmy zobaczyć **jedynie** informacje: 

Jeżeli uda się połączyć:
> **Udało się połączyć z:** domena - pogrubiony napis na zielono 

Jeżeli nie uda się połączyć:
> **Nie udało się połączyć z:** domena - pogrubiony napis na czerwono

#### Analiza zadania:

* Jakich polecen będziemy potrzebować?
* Jakich instrukcji będziemy potrzebować?

Spróbuj sam przez chwile się zastanowić jak zabrać się za to zadanie 

Output naszego skryptu po wykonaniu powinien prezentować się następująco (zakładając, że nasz komputer jest połączony z internetem):


> **Udało się połączyć z:** facebook.com

> **Udało się połączyć z:** google.com

> **Nie udało się połączyć z:** jakisnieznanyadres.xdd

> **Nie udało się połączyć z:** nieznanyadresinternetowy.abcde

> **Udało się połączyć z:** twitter.com

> **Udało się połączyć z:** github.com

> **Nie udało się połączyć z:** ostatniadresnieznany.qwerty


Przykładowe rozwiązanie zadania znajdziesz [tutaj](https://github.com/wojtek2kdev/Bash-lesson/blob/master/practice/Example_02.sh)
