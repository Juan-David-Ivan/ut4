#!/bin/bash
pid_script=$$
intentos=0
echo "Has entrado al script $pid_script ..."
read -n1 -p "Pulsa una tecla..."

while [[ true ]]; do
	if [[ $intentos -eq 11 ]]; then
	read -n1 -p "Has gastado tus intentos..."
	fi
	read -p "Indica el pid" user_pid
	if [[ $user_pid -lt $pid_script ]]; then
		((intentos++))
		echo -e "El pid introducido por el usuario es menor que el pid del script"
		echo -e "Has usado $intentos intentos..."
		read -p "Pulsa una tecla para continuar..."

	elif [[ $user_pid -gt $pid_script ]]; then
		((intentos++))
		echo -e "El pid introducido por el usuario es mayor que el pid del script"
		echo -e "Has usado $intentos intentos..."
		read -p "Pulsa una tecla para continuar..."

	elif [[ $user_pid -eq $pid_script ]]; then
		echo -e "Felicidades, has adivinado el pid"
		
	fi
	
done
