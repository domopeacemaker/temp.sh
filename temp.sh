
#!/bin/bash
 
# Se guarda el valor de temperatura de la CPU en una variable
cpuTemp=$(cat /sys/class/thermal/thermal_zone0/temp)
 
# Se guarda el valor de temperatura de la GPU a una variable
gpuTemp=$(vcgencmd measure_temp)
 
# Imprimimos con el formato que queramos. Incluimos la fecha
echo "$(date)"
echo "Temperatura CPU = $((cpuTemp/1000))'C"
echo "Temperatura GPU = $gpuTemp"

#Importante antes de ejecutarlo, hacer "sudo chmod +x temp.sh" para darle permisos de ejecución
