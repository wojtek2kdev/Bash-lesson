# Wyswietlanie tekstu, formatowanie - kolory, pogrubienie itp
Ten punkt nie będzie tak rozbudowany jak poprzednie punkty, zawrę tu kilka informacji o tym w jaki sposób możemy formatować tekst wypisywany na standardowe wyjście naszego programu. Skupimy się tutaj na poleceniu **echo**.

Do polecenia tego należy dodać przełącznik -e, który odpowiada za interpretacje znaku ucieczki. Formaty tekstu piszemy według następującego wzoru:

>**esc**[NumerFormatu**m**...Tekst...

**...** oznacza kolejne formaty , które mogą być łączone np. Kolor czerwony + pogrubienie + podkreślenie, lub kolejny tekst.

**esc** oznacza znak ucieczki, który w bashu może zostać zapisany w następujących postaciach:
- \e
- \033
- \x1B

My będziemy korzystać z **\e** gdyż jest najkrótszy.

Przykładowe kody formatu:

> **1** - Pogrubiony
> **4** - Podkreślony
> **5** - Migający
> **31** - Czerwony
> **32** - Zielony
> **0** - Normalny

Szerszą liste formatów można znaleźć na tej [stronie](https://misc.flogisoft.com/bash/tip_colors_and_formatting)

Przykłady:

```sh
#Kolor czerwony, pogrubiony, tekst: Error
echo -e "\e[31m\e[1mError\e[0m"
#Kolor zielony, podkreślony, tekst: Hello, kolor biały, pogrubiony, migający, tekst: World
echo -e "\e[32m\e[1m\e[4mHello\e[0m\e[1m\e[5m World\e[0m"
```

Po tych sześciu punktach myślę, że spokojnie możemy przejść do zadań praktycznych. Przejdź [dalej](https://github.com/wojtek2kdev/Bash-lesson/blob/master/Practice_01.md)
