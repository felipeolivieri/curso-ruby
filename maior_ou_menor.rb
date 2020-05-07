=begin
Este é meu primeiro programa em ruby. estou aprendendo a desenvolver e este é o primeiro exercicio sugerido no curso online da Alura.
O que faz? É um jogo de adivinhação de numero, podemos chutar um numero de 0 a 200 e temos uma quantilidade limitada para adivinhar.
=end

def da_boas_vindas
  puts "Bem vindo ao jogo de adivinhação"
  puts "Qual é o seu nome?"
  nome = gets.strip
  puts "\n\n\n\n\n"
  puts "Começaremos o jogo para você, #{nome}"
  
end

def sorteia_numero_secreto
  puts "Escolhendo um número secreto entre 0 e 200..."
  sorteado = 175
  puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
  sorteado
end  

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
	puts "Tentativa : #{tentativa} de #{limite_de_tentativas}"
	puts "Chutes até agora: #{chutes}"
	puts "Entre com o número (<200)"
	chute = gets.strip
	puts "Será que acertou? você chutou #{chute}"
	chute.to_i
end

def verifica_se_acertou(numero_secreto, chute, tentativa)
	acertou = chute == numero_secreto
	if acertou
  		puts "Acertou! Com apenas #{tentativa} tentativas!!"
  		return true
	end
	maior = numero_secreto > chute
	if maior
		puts "O número secreto é maior! Tente um número maior >>>"		
	else
		puts "O número secreto é menor! Tente um número menor <<<"
	end
	false
end

da_boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 5
chutes = []

puts "Você terá #{limite_de_tentativas} tentativas! Boa Sorte!"

for tentativa in 1..limite_de_tentativas
	
	chute = pede_um_numero chutes, tentativa, limite_de_tentativas
	chutes << chute
	
	if verifica_se_acertou numero_secreto, chute, tentativa
		break
	end
end
