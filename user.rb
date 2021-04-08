require 'json'

class User

	attr_accessor :email, :name, :permissions

	def initialize(*args)
		@email = args[0]
		@name = args[1]
		@permissions = User.permissions_from_template
	end

	def self.permissions_from_template
		
		#reads the file
		fil = File.read 'user_permissions_template.json'
		
		#creates json object
		JSON.load(fil, nil, symbolize_names:false) #nice format


	end

	def save
		self_json = {email: @email, name: @name, permissions: @permissions}.to_json
		open('users.json', 'a') do |fil| #a appends
			fil.puts self_json
		end
	end

end