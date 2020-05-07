chutes = []

chute = 176
tentativa = 1
chutes[tentativa -1] = chute
chute = 100
tentativa = 2
chutes[tentativa - 1] = chute


for contador in 0..(tentativa -1)
	puts "chute: " +chutes[contador].to_s
end	


puts chutes