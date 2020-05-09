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
  nome
end

def pede_dificuldade
	puts "Qual o nivel de dificuldade que deseja? (1 fácil, 5 difícil)"
	dificuldade = gets.to_i
end

def sorteia_numero_secreto(dificuldade)
	case dificuldade
	when 1
		maximo = 30
	when 2
		maximo = 60
	when 3
		maximo = 100
	when 4
		maximo = 150
	else
		maximo = 200
	end		
 	puts "Escolhendo um número secreto entre 1 e #{maximo}..."
  	sorteado = rand(maximo) + 1
  	puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
  	sorteado
end  

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
	puts "Tentativa : #{tentativa} de #{limite_de_tentativas}"
	puts "Chutes até agora: #{chutes}"
	puts "Entre com o número"
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

def joga(nome, dificuldade)
	numero_secreto = sorteia_numero_secreto(dificuldade)
	pontos_ate_agora = 1000
	limite_de_tentativas = 5
	chutes = []

	puts "Você terá #{limite_de_tentativas} tentativas! Boa Sorte!"
	for tentativa in 1..limite_de_tentativas
		
		chute = pede_um_numero chutes, tentativa, limite_de_tentativas
		chutes << chute
		
		if nome == "Felipe"
			puts "Acertou!"
			break
		end
		pontos_a_perder = (chute - numero_secreto).abs/2.0
		pontos_ate_agora -= pontos_a_perder

		if verifica_se_acertou numero_secreto, chute, tentativa
			break
		end
	end

	puts "Você ganhou #{pontos_ate_agora} pontos!"
end


def nao_quer_jogar?
	puts "Deseja jogar novamente? (S/N)"
	nao_quero_jogar = gets.strip
	nao_quero_jogar.upcase == "N"
end


nome = da_boas_vindas
dificuldade = pede_dificuldade

loop do
	joga nome, dificuldade
	if nao_quer_jogar?
		break
	end
end

