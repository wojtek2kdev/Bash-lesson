# Petla, iterator, wykorzystanie pętli
W tym punkcie nauczysz się wykorzystania kolejnej bardzo ważnej instrukcji - pętli. Przedstawie dwa sposoby tworzenia pętli: pętla **while** i pętla **for**.

#### While
Instrukcje powtarzają się dopóki warunek logiczny jest **prawdziwy**, więcej o warunkach napisane jest w poprzednim punkcie.
```sh
while warunek; do
    polecenie1;
    polecenie2;
    polecenieN;
done;
```

**Uwaga:** Po słowie kluczowym **do** nie stawiamy średnika!

Przykładowa pętla **while** wyświetlająca wszystkie liczby naturalne od 1 do 10.
```sh
#!/bin/bash
x=1
while (($x<11)); do
    echo $x;
    ((x=$x+1));
done;
```

#### For
Ten rodzaj pętli jest bardziej złożony od pętli **while**, można go wykorzystać na kilka sposobów. 
- Z wykorzystaniem **iteratora** czyli liczby, która jest zwiększana bądź zmniejszana o daną liczbe.
- Pętla typu **for-each**, czyli iteracja po każdym elemencie w danym zbiorze danych - mogą to być również pliki. Więcej informacji można znaleźć [tutaj](https://www.cyberciti.biz/faq/bash-for-loop/)

Pierwszy typ implementacji pętli **for**:

```sh
for ((inicjalizacja; warunek_końcowy; zwiększanie/zmniejszanie)); do
    polecenie1;
    polecenie2;
    polecenieN;
done;
```
Przykład wyswietlajacy liczby parzyste od 10 do 2.
```sh
for ((i=10; i>1; i-=2)); do
    echo $i;
done;
```

Drugi typ pętli for - **for-each**:

```sh
for element_ze_zbioru in zbior_danych; do
    polecenie;
done
```

Przykłady:
```sh
for i in 1 2 3 4; do
    polecenie;
done;

for i in {a..b..x}; do # a..b..c oznacza od a do b co x liczb, domyslnie x=1
    polecenie;
done;

for file in file1 pliczek.txt /home/index.html; do
    polecenie;
done;
```

### Podsumowanie
Po przeczytaniu tego punktu powinieneś mieć opanowane w podstawowym stopniu korzystanie z instrukcji pętli **while** i **for**.

Przejdźmy do następnego punktu jakim jest formatowanie tekstu w bashu. [Dalej](https://github.com/wojtek2kdev/Bash-lesson/blob/master/Point_06.md)

