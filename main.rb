


def main_menu
	puts "Digite o numero"
	puts "1 - Adicionar Contato"
	puts "2 - Listar Contatos"
	puts "3 - Sair"
end

main_menu
action = gets.chomp.to_i

while (action != 3)
	main_menu
	action = gets.chomp.to_i
end

puts "Volte sempre"
