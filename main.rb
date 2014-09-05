require_relative "Contact"


def main_menu
	puts "====================================="
	puts "Digite o numero da opcao desejada"
	puts "1 - Adicionar Contato"
	puts "2 - Listar Contatos"
	puts "3 - Sair"
	puts "====================================="
	puts ""
end

def add_contact
	puts "====================================="
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
	puts "====================================="
	puts ""

	return contact
end

def list_contact(contact_list)
	puts "====================================="
	contact_list.each do |id, contact| 
		puts "#{id}) #{contact.name}"
	end
	puts "Digite o numero do contato para ver o perfil"
	show_contact(contact_list)
	puts "====================================="
	puts ""
end

def show_contact(contact_list)
	id = gets.chomp.to_i
	puts "====================================="
	puts "nome: #{contact_list[id].name}"
	puts "telefone: #{contact_list[id].phone}"
	puts "e-mail: #{contact_list[id].email}"
	puts "endereco: #{contact_list[id].adress}"
	puts "====================================="
	puts ""
end



contact_list = Hash.new()
id_count = 1
main_menu
action = gets.chomp.to_i

while (action != 3)
	
	if(action == 1)
		contact_list[id_count] = add_contact
		id_count += 1
	end

	if(action == 2)
		list_contact(contact_list)
	end

	main_menu
	action = gets.chomp.to_i
end

puts "====================================="
puts "Volte sempre"
puts "====================================="
puts ""