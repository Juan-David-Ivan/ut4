#!/bin/bash
yad --title="Confirmar accion" --text="Estas seguro de que queires salir?" 
--button="Aceptar:0" --button="Cancelar:|"

if [[ $? == 0 ]]; then
	echo "El usuario ha aceptado"
	exit
else
	echo "El usuario ha cancelado"
	bash menu.sh
fi
