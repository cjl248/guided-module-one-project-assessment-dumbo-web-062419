require_relative '../config/environment'

#### START TTY PROMPT ####
$prompt = TTY::Prompt.new

class CommandLineInterface

  def initialize; end

  def clear_database
    User.destroy_all
    Animal.destroy_all
    Report.destroy_all
  end

  def welcome
    puts "Haauuuudeeeeee"
  end

  def ask_for_name
    $prompt.ask("Hey! What's your name?")
  end

  def give_CRUD_choice
    user_crud_choice = $prompt.select('What would you like to do?', ['CREATE A REPORT', 'READ REPORTS', 'EDIT A REPORT', 'MARK AN ANIMAL AS FOUND'])
  end

  def ask_if_animal_lover

  #   $prompt.select('Are you an animal lover?', ['yae', 'nae'])

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

    puts "What name would you like to use?"
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

    puts "Now let's get some details on the animal you saw."; sleep(1)

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

  def create_new_animal_report
    animal_hash = create_new_animal_hash()
    Animal.create(animal_hash)

    report_hash = create_new_report_hash()
    User.create(report_hash)
  end

  def set_up_CRUD_direction

    #### CREATE ####
    # instance.create
    if give_CRUD_choice() == "CREATE A REPORT"

      #### CREATE USER ####
      user_hash = cli.create_new_user_hash()
      new_user = User.create(user_hash)

      #### CREATE ANIMAL, CREATE REPORT, SET FOREIGN KEYS ####
      animal_hash = cli.create_new_animal_hash()
      new_animal = Animal.create(animal_hash)

      #### CREATE REPORT WITH FOREIGN KEYS ####
      report_hash = cli.create_new_report_hash()
      report_hash[:user_id] = new_user.id
      report_hash[:animal_id] = new_animal.id
      new_report = Report.create(report_hash)

    #### READ ####
    elsif give_CRUD_choice() == "READ REPORTS"
      criteria = $prompt.select('Would you like to look up animals by eye or fur color?', ["EYE COLOR", "FUR COLOR"])

      fur_or_eye_choice = ""
      if criteria == "EYE COLOR"
        fur_or_eye_choice = "eye_color: "
        eye_color_choice = $prompt.select('What eye color?', ['green', 'brown', 'black'])
        Animal.where(fur_or_eye_choice = eye_color_choice)
      else
        fur_or_eye_choice = "fur_color: "
        fur_color_choice = $prompt.select('What fur color?', ['black', 'brown', 'spotted'])
        Animal.where(fur_or_eye_choice = fur_color_choice)
      end

    #### UPDATE ####
    # instance.update(key, value) #
    else give_CRUD_choice() == "EDIT A REPORT"
      puts "looking up animals..."
    end

  end

  # def login
  #   if Customer.find_by(name: @customer_name) == nil
  #     @prompt.select ("Looks Like You Are New Here. Here Are Your Choices") { |menu|
  #       menu.choice "Join Us", -> { new_customer }
  #       menu.choice "Exit",-> {exit_program}
  #     }
  #   else
  #     if Customer.find_by(name: @customer_name)
  #       puts "#{@customer_name} I See You Are An Existing Customer"
  #       @customer = Customer.find_by(name: @customer_name)
  #     end
  #   end
  # end

end
