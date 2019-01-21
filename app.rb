require_relative './lib/user.rb'
require_relative './lib/event.rb'

User.new("julie@julie.com")
User.new("jean@jean.com")
User.new("jeanne@jeanne.com")
User.new("jules@jules.com")

julie = User.find_by_email("julie@julie.com")
jean = User.find_by_email("jean@jean.com")
jules = User.find_by_email("jules@jules.com")
jeanne = User.find_by_email("jeanne@jeanne.com")

e = Event.new("2019-01-13 09:00", 10, "standup quotidien", jean, julie, jules, jeanne)
puts "Voici l'email du premier attendee de l'événement : #{e.attendees[3]}"


=begin 
event = Event.new("2019-01-21 16:30", 30, "Projet", "samir@asfor.com, tintin@milou.com")
puts "--------------------"
puts event.end_date(event.start_date, event.length)

puts "--------------------"
puts Time.now
puts "--------------------"
puts event.start_date
puts event.is_past?()
puts event.is_future?()
puts event.is_soon?()

puts "--------------------"

puts event.to_s
=end