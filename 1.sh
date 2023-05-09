#!/bin/sh

num_trips=$1

# Opcion A: Pago Fijo de 18€
option_a=18

# Opcion B: Pago por tarjeta de 9€ + 1€ por viaje
option_b=$((9 + num_trips))

#Opcion C: PAgo de 5€ por viaje
option_c=$((5 * num_trips))

# Busca el costo minimo
min_cost=$((option_a < option_b ? option_a : option_b))
min_cost=$((min_cost < option_c ? min_cost : option_c))

# Return the best option
if [ $min_cost -eq $option_a ]
then
    echo "La opcion A es la mejor with a fixed payment of 18€"
elif [ $min_cost -eq $option_b ]
then
    echo "La opcion B es la mejor para pago con tarjeta de $option_b€"
else
    echo "La opcion C es la mejor para pago con tarjeta de $option_c€ para $num_trips viajes"

fi
