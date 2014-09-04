require_relative "Contact"


def main_menu
	puts "Digite o numero da opcao desejada"
	puts "1 - Adicionar Contato"
	puts "2 - Listar Contatos"
	puts "3 - Sair"
end

def add_contact
	puts "digite o nome"
	name = gets.chomp

	puts "digite o telefone"
	phone = gets.chomp

	puts "digite o e-mail"
	email = gets.chomp

	puts "digite o endereco"
	adress = gets.chomp

	contact = Contact.new(name, phone, email, adress)

	puts "#{name} adicionado"

	return contact
end

def list_contact(contact_list)
	contact_list.each do |contact| 
		puts contact.name
	end
end



contact_list = []
main_menu
action = gets.chomp.to_i

while (action != 3)
	
	if(action == 1)
		contact_list << add_contact
	end

	if(action == 2)
		list_contact(contact_list)
	end

	main_menu
	action = gets.chomp.to_i
end

puts "Volte sempre"
