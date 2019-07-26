require_relative '../config/environment'

$prompt = TTY::Prompt.new

class CommandLineInterface

  def initialize(); end

  def login
      session = {}
      user_name = $prompt.ask("What's your name?")
      session[:name] = user_name
      if User.find_by(name: @customer_name) == nil
        new_user(session)
      else
        old_user(session)
    end
  end

  def new_user(current_session)
    $prompt.select("Are you an animal lover?") {
      |menu|
        menu.choice "Duh! 😍😍😍", -> {
          session[:animal_lover] = "yes"
          User.create(session)
          present_CRUD_options(session)
        }
        menu.choice "Nope! 🚫🛑🚫", -> {
          exit_program()
        }
      }
  end

  def create_user(current_session)
    User.create(session[:name] = name, session[:love_animals] = lover)
  end

  def old_user(current_session)
    puts "Welcome back #{session[:name]}!"
    present_CRUD_options(session)
  end

  def present_CRUD_options(current_session)
    $prompt.select("Welcome back! What would you like to do?") {
      |menu|
        menu.choice "START A NEW REPORT", -> {"creating"}
        menu.choice "LOOK THROUGH REPORTS", -> {"reading"}
        menu.choice "EDIT A PREVIOUS REPORT", -> {"updating"}
        menu.choice "DELETE AN OLD REPORT", -> {"deleting"}
    }
  end

  def exit_program
    exit!
  end

  # def login(name)
  #    # $ makes the variable global; must be declared first)
  #   if User.find_by(name: name) == nil
  #     $prompt.select ("Looks Like You Are New Here. Here Are Your Choices") {
  #       |menu|
  #         menu.choice "Login to the ||REPORT_BOOK||", -> { new_user(name) }
  #         menu.choice "Exit", -> { exit_program() }
  #     }
  #
  #   elsif User.find_by(name: name)
  #     puts "#{name}, I See You Are An Existing Customer"
  #     user = User.find_by(name: name)
  #   end
  # end

end
