#!/bin/bash

cd ~/Documentos/estudos/LearningShell/imagens-novos-livros

for arquivo in *
do
	#verificando se arquivo é um diretorio
	if [ -d $arquivo ]
	then
		#esse codigo foi refatorado para não fica repetido e foi apagado daq
		#entrar no diretorio e fazer varredura do conteudo
		#cd $arquivo 
		#for conteudo_arquivo in *
		#do
		#	if [ -d $conteudo_arquivo ]
		#	then
				#entrar no diretorio e fzr a varredura
		#	else
				#conversao jpg para png
		#	fi
		#done
		#ate aqui
	else
		#conversao jpg para png
	fi
done
