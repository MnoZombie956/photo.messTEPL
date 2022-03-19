#!/bin/bash
# Marco Tulio - TPI, Topicos Especiais: LINUX - Prof. Andrei - CEFETMG 
F_EXTENSOES=("*.png" "*.jpg" "*.jpeg")

echo "Estamos em $(pwd), diga o diretorio raiz destino: "
read destino

if [ ! -d "$destino" ]; then
        echo $destino nao existe, usando e criando o diretorio ~/myPhotos padrao.
        destino=~/myPhotos
        read -p  "s para sair, enter continua." q
        if [[ $q == "q" ]]; then
                exit
        fi
        mkdir "${destino}"
fi

echo "Fotos serao movidas para $destino."
echo "Fotos encontradas no diretorio atual:"

for extensoes in "${F_EXTENSOES[@]}"
do
        echo "Procurando por $extensoes"
        encontros=( $(find -name "$extensoes") )
        if [ ${#encontros[@]} -eq 0 ]; then
                echo "Sem fotos do tipo $extensoes encontradas."
        else
                modificada=( $(stat $(find $extensoes) | grep "Modify" | cut -c 9-19) )
                i=0
                for (( i=0; i<${#encontros[@]}; i++ ));
                do
                        echo "${encontros[i]}, modificada em: ${modificada[i]}"
                        if [ ! -d "${destino}/${modificada[i]}" ]; then # verifica se o dir ja existe
                                mkdir "${destino}/${modificada[i]}"
                        fi
                        mv -n ${encontros[i]} ${destino}/${modificada[i]} # pls, do not overwrite anything
                done
        fi
done
