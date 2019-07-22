require_relative '../config/environment'


## Clears the database to start fresh ##
def clear_database
  User.destroy_all
  Animal.destroy_all
  Report.destroy_all
end


## RETURNS A NEW USER'S ATTRIBUTE HASH ##
def ask_if_animal_lover
  puts "Yes or no: are you an animal lover?"
  animal_lover_response = gets.chomp
  downcase_animal_lover_response = animal_lover_response.downcase

  if downcase_animal_lover_response == "no"
    puts "Maybe there are better things you could be doing? Bye!"
    exit!()
  elsif downcase_animal_lover_response == "yes"
    downcase_animal_lover_response
  else
    puts "Please answer with 'yes' or 'no'."
    sleep(0.5)
    ask_if_animal_lover()
  end
end

def create_new_user_hash
  new_user_hash = {}

  puts "Hey! What's your name?"
  new_user_hash[:name] = gets.chomp

  new_user_hash[:love_animals] = ask_if_animal_lover()

  new_user_hash
end


## Returns a hash with attributes for a new aminal ##
def ask_is_healthy
  puts "Yes or no: was the animal healthy?"
  healthy_response = gets.chomp
  downcase_healthy_response = healthy_response.downcase

  if (downcase_healthy_response == "yes" || downcase_healthy_response == 'no')
    healthy_response
  else
    puts "Please answer with a 'yes' or 'no'."
  end
  downcase_healthy_response
end

def create_new_animal_hash
  new_animal_hash = {}

  puts "Now let's get some details on the animal you saw."
  sleep(1)

  puts "What was the animal's eye color?"
  new_animal_hash[:eye_color] = gets.chomp

  puts "What was the animal's fur color?"
  new_animal_hash[:fur_color] = gets.chomp

  new_animal_hash[:is_healthy] = ask_is_healthy()

  new_animal_hash
end


## Returns a hash with attributes for a new report ##
def create_new_report_hash
  new_report_hash = {}

  puts "Great! Now lets create a report about the sighting!"; sleep(1)

  puts "In what month (MM) did the sighting take place."
  new_report_hash[:month] = gets.chomp

  puts "Please title your report."
  new_report_hash[:title] = gets.chomp

  puts "What city did you see the animal in?"
  new_report_hash[:city] = gets.chomp

  new_report_hash
end

# def create_new_animal_report
#   animal_hash = create_new_animal_hash()
#   Animal.create(animal_hash)
#
#   report_hash = create_new_report_hash()
#   User.create(report_hash)
# end
