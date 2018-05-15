# Zmienna, pobieranie zmiennej od użytkownika lub z polecenia, uzycie zmiennej
Punkt ten będzie zawierał informacje o tworzeniu zmiennych, pobieraniu ich od użytkownika oraz pozyskiwaniu wyników poleceń do zmiennej. Przedstawione zostaną również niektóre wbudowane zmienne środowiskowe.
#### Tworzenie zmiennej, oraz użycie:
Tworzenie zmiennej w bashu jest prostym zadaniem, wystarczy podać nazwe naszej zmiennej, znak równości oraz wartość. 

> nazwa_zmiennej=wartosc

Aby odwołać się do naszej zmiennej, np żeby ją wyświetlić, stawiamy przed nazwą zmiennej znak $.

```sh
echo $nazwa_zmiennej
```

Aby usunąć naszą zmienną, użyjemy polecenia **unset**.

> unset nazwa_zmiennej

Przykłady deklaracji i odwołań:
```sh
#!/bin/bash
imie=Wojtek
adres=192.168.0.123
spacje="Napis ze spacjami"
spacje2=Hello\ World

sudo useradd -m $imie 
ping $adres
```
**Uwaga**:
* Pomiędzy nazwą zmiennej a znakiem równości nie stawiamy spacji.
* Jeżeli naszą wartością jest napis ze spacjami, wtedy należy:
    * Zamknąć napis w cudysłowie
    lub
    * Przed każdą spacją postawić [znak ucieczki](https://pl.wikipedia.org/wiki/Znak_modyfikacji)
#### Pobieranie zmiennych od użytkownika:
W tym podpunkcie przedstawie kilka sposobów odczytywania wartości przekazanych przez użytkownika:
* ##### Odczytanie wartości, podanej przy wywołaniu skryptu jako parametr.
    
     Przy wywoływaniu skryptu, po podaniu ścieżki do niego, możemy po spacji podać dodatkowe parametry, każdy parametr oddzielamy spacją. Aby wykorzystać parametr wewnątrz skryptu wpisujemy $ i numer parametru. Przykład:
    * Wywołanie w terminalu:
    ```
    $ ./suma.sh 5 4
    ```
    * Skrypt:
    ```sh
    #!/bin/bash
    suma=$1+$2
    echo $suma
    ```
    Zgadza się, wyświetlił nam się napis 5+4, ale dlaczego? Otóż, zadeklarowaliśmy zmienną **suma** jako zwykły napis, jak zadeklarować zmienną arytmetyczną powiem w następnym podpunkcie.
    
* ##### Odczytanie danych wejściowych za pomocą polecenia [read](https://ss64.com/bash/read.html).
    Składnia polecenia:

    > read <parametry> zmienna_1 zmienna_2 ... zmienna_n
    
    Skorzystamy również z dwóch parametrów:
    * p - Wyświetla komunikat.
    * s - Powoduje nie wyświetlanie się wpisywanych danych.
    
    Przykład:
    ```sh
    #!/bin/bash
    read -s -p "Podaj haslo: " haslo
    ```
    W przykładzie tym, dane wpisywane przez użytkownika nie będą widoczne w trakcie wpisywania, oraz zostanie wyświetlony komunikat ___Podaj haslo:___
    
    Możemy póżniej normalnie się odwoływać do tej zmiennej jak do każdej innej, czyli poprzedzając nazwe zmiennej dolarem.
    
    Możemy zadeklarować, że odczytujemy tyle zmiennych ile chcemy (zgodnie ze wzorem), lecz nie musimy wpisywać w terminalu tyle danych, ile wymaga skrypt. Wpisując w konsoli kolejne zmienne należy je oddzielać spacją.
    
    **Uwaga:** Użycie podanych parametrów nie jest wymagane.

    
    
#### Tworzenie zmiennych arytmetycznych i wykonywanie na nich operacji:

Aby zadeklarować zmienną arytmetyczną można skożystać z wyrażenia arytmetycznego, czyli dwóch nawiasów.
    
> zmienna=$((1+2))
> ((zmienna+=3))
    
**Uwaga:** Wewnątrz wyrażenia arytmetycznego nie poprzedzamy nazwy zmiennej znakiem $. W pierwszej linijce poprzedziłem całe wyrażenie dolarem, ponieważ zwróci ono wynik wyrażenia do zmiennej, brak dolara oznacza zwykłą operacje matematyczną jak w 2 linijce. Operacja += oznacza dodanie danej wartości do zmiennej.
    
Przykłady:
```sh
#!/bin/bash
x=$((2+3))
((x+=2))
((x=2*3-1))
```

### Podsumowanie: 
##### Tworzenie i usuwanie zmiennych oraz ich używanie już za nami, w tym punkcie dowiedziałeś się:
* Jak tworzyć i usuwać zmienną.
* Jak tworzyć wyrażenia arytmetyczne.
* Jak pobierać dane wejściowe od użytkownika oraz jak używać parametrów wywołania.
#### Przejdź do: [Instrukcja warunkowa, operatory porownania]()

### Materiał dodatkowy:
Zmienne, które tworzyliśmy były dostępne tylko z poziomu skryptu, w którym się znajdowały, jest to duży plus, gdyż nie nastąpi niepożądana modyfikacja zmiennej w innym skrypcie w systemie. Jeżeli mamy potrzebe wykorzystania zmiennej w innym skrypcie, który wywołuje nasz skrypt, wystarczy, że skorzystamy z polecenia **export**.

> export nazwa_zmiennej
    

