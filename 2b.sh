#!/bin/sh

# Lee las notas de los alumnos del archivo matriculas.txt
notas=$(cut -d " " -f 1 matriculas.txt)

# Calcula la media de todas las notas
suma_notas=$(echo "$notas" | paste -sd+ | bc)
num_notas=$(echo "$notas" | wc -l)
media_notas=$(echo "scale=2; $suma_notas / $num_notas" | bc)

# Muestra la media de todas las notas
echo "Media de todas las notas: $media_notas"
fi
