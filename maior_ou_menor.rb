=begin
Este é meu primeiro programa em ruby. estou aprendendo a desenvolver e este é o primeiro exercicio sugerido no curso online da Alura.
O que faz? É um jogo de adivinhação de numero, podemos chutar um numero de 0 a 200 e temos uma quantilidade limitada para adivinhar.
=end

# da boas vindas
puts("Bem vindo ao jogo de adivinhação")
puts "Qual é o seu nome?"
nome = gets
puts "\n\n\n\n\"
puts "Começaremos o jogo para você, " + nome
puts "Escolhendo um número secreto entre 0 e 200..."
puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
puts "\n\n\n\n\n"


numero_secreto = 175

# quantidade de tentativas
limite_de_tentativas = 5
puts "Você terá " + limite_de_tentativas.to_s + " tentativas! Boa Sorte!"

for tentativa in 1..limite_de_tentativas
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
