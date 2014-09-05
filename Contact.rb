

class Contact

	attr_reader :name
	attr_reader :phone
	attr_reader :email
	attr_reader :adress
	attr_reader :comments

	def initialize(name, phone, email, adress)
		@name = name
		@phone = phone
		@email = email
		@adress = adress
		@comments = Hash.new()
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

	def addComment (id, comment)
		@comments[id] = comment
	end

end