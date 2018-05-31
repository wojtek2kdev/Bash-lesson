# Instrukcja warunkowa, operatory porownania
Instrukcja warunkowa - jedna z najważniejszych instrukcji w programowaniu, pozwala na podejmowaniu decyzji przez twój program na podstawie zawartych w warunku operacji logicznych. Podzielimy sobie ten punkt na kilka mniejszych podpunktów:
- Pojedyncza instrukcja warunkowa
- Instrukcja warunkowa z kilkoma warunkami
- Warunek arytmetyczny
- Warunek z użyciem komend i przełączników
- Przykład

Nie omówie w tym punkcie wszystkich dostępnych sposobów implementacji instrukcji warunkowej, dla chętnych zostawiam [link](https://unix.stackexchange.com/questions/306111/what-is-the-difference-between-the-bash-operators-vs-vs-vs) do pytania na forum Stack Exchange.

#### Pojedyncza instrukcja warunkowa
```sh
if warunek; then
    polecenie1;
    polecenie2;
    polecenieN;
fi;
```
**Uwaga:** Po słowie kluczowym **then** nie stawiamy średnika!

#### Instrukcja warunkowa z kilkoma warunkami
Może zdażyć się sytuacja, że chcemy wywołać jakąś czynność gdy nasz pierwotny warunek nie zostanie spełniony, można tego dokonać dodając instrukcje **else**.
```sh
if warunek; then
    polecenie;
    else
        polecenie2;
fi;
```
Jeżeli chcemy sprawdzić inny warunek po tym jak warunek poprzedni nie został spełniony możemy użyć instrucji **elif** - od słów else if czyli z. ang: w przeciwnym wypadku jeśli. Po słowie tym podajemy warunek, który zostanie sprawdzony dopiero wtedy gdy poprzedni warunek nie zostanie spełniony.

```sh
if warunek1; then
    polecenie1;
    elif warunek2; then
        polecenie2;
            elif warunekN; then
                polecenieN;
fi;
```

#### Warunek arytmetyczny
W poprzednich przykładach implementacji występowało tylko słowo **warunek**, teraz przyszła pora na rozwinięcie w jaki sposób możemy zapisywać ten warunek, podam dwa. Pierwszym jest warunek arytmetyczny zapisywany jak operacja arytmetyczna na liczbach czyli:
```sh
if (( 1>0 )); then
    polecenie;
fi;
```

Wewnątrz takiego typu warunku powinny zazwyczaj znajdować się operacje logiczne takie jak:
- **&&** - koniunkcja
- **||** - alternatywa
- **==** - równy 
- **!=** - różny
- **>** - większy od
- **<** - mniejszy od
- **>=** - większy lub równy
- **<=** - mniejszy lub równy
- **!(wyrażenie)** - zaprzeczenie wyrażenia logicznego

Jeżeli postanowimy wstawić w warunek samo działanie matematyczne np. 2+2 to wynik takiego działania, który będzie **różny** od **0** będzie uznawany za logiczną **prawdę**.

#### Warunek z użyciem komend i przełączników.
Ten rodzaj warunku jest bardziej rozbudowany i daje możliwość wykonywania poleceń wewnątrz warynku i dokonywania operacji porównawczych na wynikach działań tych poleceń jak i ogólnie możliwość operacji na ciągach i liczbach. Jest on oparty o intrukcje **test**, więcej o niej można poczytać [tutaj](http://bash.0x1fff.com/if-else). 
```sh
if [warunek]; then
    polecenie1;
fi
```
Przykład:
Czy katalog domowy użytkownika Test1 istnieje?
```sh
if [ -d  /home/Test1 ]; then
    echo Tak;
    else echo Nie;
fi;
```

#### Przykład
1. Sprawdz czy użytkownik jest pełnoletni na podstawie wpisanego wieku.

Kod:
```sh
if (( $1 >= 18 )); then 
    echo "Jestes pelnoletni"; 
else 
    echo "Jestes niepelnoletni";
fi;
```
Wywołania:

> $ ./pelnoletni.sh 17
> $ ./pelnoletni.sh 18
> $ ./pelnoletni.sh 19

Odpowiedzi:
> Jestes niepelnoletni
> Jestes pelnoletni
> Jestes pelnoletni

Mam nadzieje, że po przeczytaniu i przeanalizowaniu tego punktu wiesz już jak pisać instrukcje warunkowe w bash'u. **if** (( umiesz )); **then** przejdźmy_do [petli](https://github.com/wojtek2kdev/Bash-lesson/blob/master/Point_05.md); **fi**

