# Cronometro para apresentação
# Author: Jefferson Barros Vieira

function iniciarCronometro(){
	declare -i sec=0;
	declare -i min=60;
	declare -i interval=$1*$min;
	while true; do
		sec+=1;
		clear;		
		printf "$(($sec/$min)) min $(($sec%$min)) s";
		if [ $(($sec%$interval == 0)) == 1 ]; then
			notify-send "Robbot: Olá Jefferson, já se passou $(($sec/$min)) min";
		fi
		sleep 1;
	done
}

echo -n "Digite o intervalo em min: ";
read _INTERVAL;

notify-send "Robbot: Cronômetro Iniciado";

iniciarCronometro $_INTERVAL
