#!/bin/sh

# Número de plazas disponibles
num_plazas=5

# Lee las notas de los alumnos del archivo matriculas.txt
notas=$(cut -d " " -f 1 matriculas.txt)

# Ordena las notas de mayor a menor
notas_ordenadas=$(echo "$notas" | sort -nr)

# Calcula la nota de corte
nota_corte=$(echo "$notas_ordenadas" | head -n $num_plazas | tail -n 1)

# Muestra la nota de corte y los apellidos de los alumnos admitidos
echo "Nota de corte: $nota_corte"
echo "Alumnos admitidos:"
grep -E "^$nota_corte [^ ]+$" matriculas.txt | cut -d " " -f 2
```
fi

