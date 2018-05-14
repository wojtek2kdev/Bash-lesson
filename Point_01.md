# Deklaracja interpretera bash w skrypcie, uruchomienie skryptu.

Skrypt powłoki jest niekompilowanym plikiem tekstowym, po jego uruchomieniu zostaje on interpretowany, w naszym przypadku przez interpreter [/bin/bash](http://bash.0x1fff.com/podstawy).

Aby nasz skrypt został interpretowany przez interpreter bash należy na początku pliku zadeklarować tzw. [Shebang](https://pl.wikipedia.org/wiki/Shebang), jest to ciąg znaków rozpoczynający się kratką i wykrzyknikiem, po nich podajemy ściężkę do interpretera, w naszym przypadku będzie to wyglądać następująco:
```sh
#!/bin/bash
```
Lecz jeżeli chcielibyśmy wywołać skrypt napisany w języku python, wtedy należy podać ścieżkę do interpretera python, np:
```sh
#!/usr/bin/python3.6
```
Gdy mamy zadeklarowany interpreter dla naszego skryptu, możemy go uruchomić, lecz najpierw nadajmy mu stosowne uprawnienia:
```
$ sudo chmod a+x nazwa_skryptu.sh 
```
**Uwaga**: Gdy mamy zadeklarowany interpreter wewnątrz naszego skryptu, wtedy rozszerzenie pliku nie ma znaczenia, zatem mogę go nazwać nawet: nazwa_skryptu.bat, nazwa_skryptu.pies albo w ogóle nie pisać rozszerzenia, lecz dobrą praktyką będzie pisanie odpowiednich skrótów dla poszczególnych typów plików czyli zostańmy przy nazwa_skryptu.sh

Teraz, gdy mamy ustawione odpowiednie uprawnienia dla naszego skryptu tzn. uprawnienia do wykonania (literka x), możemy uruchomić nasz skrypt wpisując w terminalu nazwe skryptu poprzedzoną kropką i ukośnikiem (odwołanie do obecnego katalogu).

```
$ ./nazwa_skryptu.sh
```
Zgadza się - nic się nie stało, a to dlatego, że póki co nasz skrypt nic nie wykonuje. Możemy dopisać do skryptu klasyczne Hello World.
```sh
#!/bin/bash
echo "Hello world" 
```

### Podsumowanie:
##### Wstęp do pisania skryptów w powłoce bash mamy już za sobą, w tym punkcie dowiedziałeś się:
* Czym jest Shebang.
* Jak zadeklarować interpreter skryptu .
* Jak uruchomić pierwszy skrypt.
#### Przejdź do: [Odwoływanie się do innego skryptu]()
