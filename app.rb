require_relative './lib/user.rb'
require_relative './lib/event.rb'

user1 = User.new('samir@asfor.com')
user2 = User.new('tintin@milou.fr')

puts User.all.inspect

Event.new()