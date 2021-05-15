#!/bin/bash
# Escribir un script que al ejecutarse imprima en pantalla
#  *los nombre de los archivos que se encuentran en el directorio actual,
#      -- intercambiando minúsculas por mayúsculas,
#      -- además de eliminar la letra a (mayúscula o minúscula).
#  *Ejemplo, directorio actual: IsO pepE Maria
#     Obtendré como resultado:
#                              iSo
#                              PEPe
#                              mRI
function checkDir(){
  if [ -d $ruta ]; then
    ruta='./'$ruta;
    cd './'$ruta;
  else
    mkdir $ruta;
    echo "Se creara $ruta de prueba con archivos Iso, pepE y Maria";
    cd './'$ruta;
    touch IsO pepE Maria; # agregar archivos separados por ","
    
  fi
  
  
}

ruta="DIR"; # simular un dir y crear 3 archivos "ponele el nom que quieras"
checkDir;       # retorna con la ruta para ser tratado
ls  | tr a-zA-Z A-Za-z | tr -d [aA];
# Donde 
#    => 1ro lista el contenido
#    => 2do tr a-zA-Z A-Za-z -> intercambio de mayusc a minusc y visceversa
#    => 3ro tr -d [aA]       -> alimina tanto "a" como "A" de cadena c/nom arch