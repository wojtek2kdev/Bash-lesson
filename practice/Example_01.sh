#!/bin/bash

mkdir klasy

for class in {1..3}; do

	for letter in {a..c}; do #a..c -> od a do c. Możemy również określać rosnąco zbiory znaków.
		
		mkdir klasy/$class$letter
		mkdir klasy/$class$letter/zadania
		mkdir klasy/$class$letter/lekcje
		
		for number in {1..3}; do	
		
			touch klasy/$class$letter/zadania/zadanie$number

			if (( $number < 3 )); then
					touch klasy/$class$letter/lekcje/lekcja$number
			fi;

		done;

	done;

done;
