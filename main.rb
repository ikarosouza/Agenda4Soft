require_relative "Contact_List"


def main_menu
	system("clear")
	puts "====================================="
	puts "Digite o numero da opcao desejada"
	puts "1 - Adicionar Contato"
	puts "2 - Listar Contatos"
	puts "3 - Sair"
	puts "====================================="
	puts ""
end

def contact_menu
	puts "Digite o numero da opcao desejada"
	puts "1 - Deixar Comentario"
	puts "2 - Listar Comentario"
	puts "3 - Voltar"
	puts ""
end


def contact_action(contact)
	action = gets.chomp.to_i
	
	while(action != 3)
		
		if(action == 1)
			puts "Digite seu comentario:"
			contact.addComment($id_comment, gets.chomp)
			$id_comment += 1
			puts "Comentario adicionado"
			puts "Aperte enter para continuar ..."
			gets()
		end

		if(action == 2)
			puts "Comentarios:"
			contact.comments.each do |id, comment|
				puts "-------------------------------------"
				puts "#{id}) #{comment}"
				puts "-------------------------------------"
			end
			puts "Aperte enter para continuar ..."
			gets()
		end
		contact_menu
		action = gets.chomp.to_i
	end
end




contact_list = Contact_list.new
$id_comment = 1
main_menu
action = gets.chomp.to_i

while (action != 3)
	
	if(action == 1)
		contact_list.add_contact
	end

	if(action == 2)
		contact_list.list_contacts
		puts "Digite o numero do contato para ver o perfil"
		id = gets.chomp.to_i
		contact_list.show_contact(id)
		contact_menu
		contact_action(contact_list.contacts[id])
	end

	main_menu
	action = gets.chomp.to_i
end

system("clear")
puts "====================================="
puts "Volte sempre"
puts "====================================="
puts ""