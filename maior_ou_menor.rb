puts("Bem vindo ao jogo de adivinhação")
puts "Qual é o seu nome?"
nome = gets
puts "\n\n"
puts "Começaremos o jogo para você, " + nome
puts "Escolhendo um número secreto entre 0 e 200..."
numero_secreto = 175
puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
puts "\n\n\n\n\n"

# tentativas infinitas
#tentativa = 0
#while true	

=begin
	Multiplas linhas de comentarios podem
	ser feitas assim. fica muito feio
	mas funciona.
	para escrever grandes textos, explicando algo
	pode ser util. melhor que ficar colocando tralha
	em toda linha.
=end

# quantidade de tentativas
limite_de_tentativas = 5
puts "Você terá " + limite_de_tentativas.to_s + " tentativas! Boa Sorte!"
# apenas n tentativas
for tentativa in 1..limite_de_tentativas
	#tentativa += 1
	puts "Tentativa : #{tentativa} de " + limite_de_tentativas.to_s
	puts "Entre com o número (<200)"
	chute = gets
	puts "Será que acertou? você chutou " + chute

	# Verificando se acertou, utilizando condicional if e else.
	acertou = chute.to_i == numero_secreto
	if acertou
  		puts "Acertou! apenas com #{tentativa} tentativas!!"
  		break
	else
		maior = numero_secreto > chute.to_i
		if maior
			puts "O número secreto é maior! Tente um número maior >>>"		
		else
			puts "O número secreto é menor! Tente um número menor <<<"
		end
	end
end




