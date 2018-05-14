# Odwoływanie się do innego skryptu
W tym krótkim punkcie poznasz 3 sposoby odwoływania się do innych skryptów wewnątrz twojego skryptu.

- Jeżeli inny skrypt ma wewnątrz zadeklarowany interpreter, wystarczy, że podasz do niego ścieżkę oraz odpowiednie parametry (jeżeli są wymagane). Przykłady:
```sh
#!/bin/bash
./scripts/helloworld.sh
/root/script.sh -u username
./say.sh hello
```
- Można skorzystać z wbudowanego polecenia bash'a o nazwie **source** i po spacji podać ściężkę do skryptu. Przykłady:
```sh
#!/bin/bash
source sendmesg.sh -from Wojtek -to Marcin -msg "Witaj Marcin"
source scripts/server/start.sh
source /home/Wojtek/disable.sh -pc
```
- Trzecią możliwością jest podanie w pierwszej kolejności ścieżkę do interpretera, po niej ścieżkę do skryptu i ewentualne parametry. Przykłady:
```sh
#!/bin/bash
/bin/bash download.sh -from www.hosting.com/file
/bin/bash tasks/schedule.sh -t 10 -script helloworld.sh
/bin/bash /home/browser.sh
```

### Podsumowanie:
##### W tym punkcie nauczyłeś się wywoływania innych skryptów z poziomu twojego skryptu na trzy różne sposoby:
* Podanie ścieżki do skryptu (tylko gdy skrypt ma zadeklarowany interpreter)
* Użycie wbudowanego polecenia bash'a o nazwie **source**
* Podanie ścieżki do interpretera i skryptu.
#### Przejdź do: [Zmienna, pobieranie zmiennej od użytkownika lub z polecenia, uzycie zmiennej]()
