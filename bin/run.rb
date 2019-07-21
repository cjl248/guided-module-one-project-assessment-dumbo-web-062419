require_relative '../config/environment'

#### GET USER DATA AND SAVE TO DATABASE ####

new_user_hash = {}

puts "Hey! What's your name?"
new_user_hash[:name] = gets.chomp

puts "How good is your vision from 1 - 5, with 1 being the best?"
  if gets.chomp < 0 || gets.chomp > 5
    puts "Please enter e value between 1 and 5!"
  else
    new_user_hash[:vision_rating] = gets.chomp
  end

puts "Are you an animal lover?"
new_user_hash[:love_animals] = gets.chomp

new_user = User.create(new_user_hash)




#### CREATE REPORT AND SAVE TO DATABASE ####

puts "Great! Now lets create a report about the animal you saw!"

report_hash = {}

puts "When did you see lost pet?"
sleep(1)
puts "Let's start with the month (MM)."

report_hash[:month] = gets.chomp

puts "What was the date (DD)?"
report_hash[:date] = gets.chomp

puts "What should your title be?"
report_hash[:title] = gets.chomp





binding.pry

puts "ok"
