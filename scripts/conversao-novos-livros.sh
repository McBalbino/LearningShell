#!/bin/bash

converte_imagem(){
	local caminho_imagem=$1
	local imagem_sem_extensao=$(ls $caminho_imagem | awk -F. '{ print $1 }')
	convert $imagem_sem_extensao.jpg $imagem_sem_extensao.png
}

varrer_diretorio(){
	cd $1
	for arquivo in *
	do
		local caminho_arquivo=$(find ~/LearningShell/imagens-novos-livros -name $arquivo)
		#verificando se arquivo é um diretorio
		if [ -d $caminho_arquivo ]
		then
			varrer_diretorio $caminho_arquivo
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
			converte_imagem $caminho_arquivo
		fi
	done
}

varrer_diretorio ~/LearningShell/imagens-novos-livros
if [ $? -eq 0 ]
then
	echo "Conversao realizada com sucesso!"
else
	echo "Houve um problema na conversao"
fi
