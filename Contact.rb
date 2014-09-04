

class Contact

	attr_reader :name
	attr_reader :phone
	attr_reader :email
	attr_reader :adress

	def initialize(name, phone, email, adress)
		@name = name
		@phone = phone
		@email = email
		@adress = adress
	end

	def setName (name)
		@name = name
	end

	def setPhone (phone)
		@phone = phone
	end

	def setEmail (email)
		@email = email
	end

	def setAdress (adress)
		@adress = adress
	end

end