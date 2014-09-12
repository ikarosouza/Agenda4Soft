require_relative "Contact"

class Contact_list
	
	attr_reader :id
	attr_reader :contacts

	def initialize
		@id = 1
		@contacts = Hash.new
		@contacts[@id] = Contact.new("Ikaro", "8814-4999", "ikaro@email", "Rua Legal 21")
		@id += 1
		@contacts[@id] = Contact.new("Elis", "8809-8744", "elis@email", "Rua Maluca 58")
		@id += 1
	end

	def add_contact
		system("clear")
		puts "====================================="
		puts "Digite o nome"
		name = gets.chomp

		puts "Digite o telefone"
		phone = gets.chomp

		puts "Digite o e-mail"
		email = gets.chomp

		puts "Digite o endereco"
		adress = gets.chomp

		@contacts[@id] = Contact.new(name, phone, email, adress)
		@id += 1

		puts "#{name} adicionado"
		puts "====================================="
		puts "Aperte enter para continuar ..."
		gets()
	end

	def list_contacts()
		system("clear")
		puts "====================================="
		@contacts.each do |id, contact| 
			puts "#{id}) #{contact.name}"
		end

	end

	def show_contact(id)
		system("clear")
		puts "====================================="
		puts "nome: #{@contacts[id].name}"
		puts "telefone: #{@contacts[id].phone}"
		puts "e-mail: #{@contacts[id].email}"
		puts "endereco: #{@contacts[id].adress}"
		puts "====================================="
		puts ""
	end

end