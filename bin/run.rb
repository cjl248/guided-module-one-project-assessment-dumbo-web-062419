require_relative '../config/environment'

# GET USER DATA AND SAVE TO DATA BASE #

user_hash = {}

puts "What is your name?"
user_hash[:name] = gets.chomp

puts "How good is your vision from 1 - 5, with 1 being the best?"
user_hash[:vision_rating] = gets.chomp

puts "Are you an animal lover?"
user_hash[:love_animals] = gets.chomp

first_user = User.create(user_hash)

# CREATE USER REPORT AND SAVE TO DATABASE #

puts "Great! Now lets create a report about the animal you saw!"

report_hash = {}

puts "When did you see lost pet? Please use the format MM/DD/YYYY"
report_hash[:date] = gets.chomp

puts "What should your report title be?"
report_hash[:title] = gets.chomp

puts ""



binding.pry

puts "ok"