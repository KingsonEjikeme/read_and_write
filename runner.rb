require 'pp' #pretty print styles the putput
require_relative 'user'

user = User.new 'kingsonejikeme@gmail.com', 'Kingson'

pp user

user.save