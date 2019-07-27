require_relative '../config/environment'

$prompt = TTY::Prompt.new(active_color: :cyan)

class CommandLineInterface

  def initialize(); end

  def login
      session = {}
      user_name = $prompt.ask("What's your name?")
      session[:name] = user_name
      if User.find_by(name: user_name) == nil
        # binding.pry
        new_user(session)
      else
        # binding.pry
        old_user(session)
    end
  end

  def new_user(session)
    $prompt.select("Are you an animal lover?") { |menu|
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

  def create_user(session)
    User.create(session[:name] = name, session[:animal_lover] = lover)
  end

  def old_user(session)
    # binding.pry
    session[:animal_lover] = User.find_by(name: session[:name]).animal_lover
    puts "Welcome back #{session[:name]}!"
    # binding.pry
    present_CRUD_options(session)
  end

  def present_CRUD_options(session)
    $prompt.select("What would you like to do?") { |menu|
        menu.choice "START A NEW REPORT", -> {create_report(session)}
        menu.choice "LOOK THROUGH REPORTS", -> {read_report(session)}
        menu.choice "EDIT A PREVIOUS REPORT", -> {update_report(session)}
        menu.choice "DELETE AN OLD REPORT", -> {delete_report(session)}
    }
  end

 # |========================>>>> [ CREATE ] <<<<========================| #
  def create_report(session)
    # animal_in_report = Animal.create(eye_color: "", fur_color: "", is_healthy: "")
    #
    # Report.create(month: "07", title: "this cat needs help!!!!!!!!", city: "queens", user_id: session[:id], animal_id: animal_in_report.id)
    #
    # present_CRUD_options(session)
    "creating"
  end

  # |========================>>>> [ READ ] <<<<========================| #
  def read_report(session)
    #you're calling .title on an array of reports
    user_reports = User.find_by(name: session[:name]).reports.map { |report|
      report.title
    }
    puts
    $prompt.select("Here are your reports: ", [user_reports], color: :orange)
    # binding.pry
    0

    present_CRUD_options(session)
    # "reading"
  end

  # |========================>>>> [ UPDATE ] <<<<========================| #
  def update_report(session)
    "updating"
  end

  # |========================>>>> [ DELETE ] <<<<========================| #
  def delete_report(session)
    # current_user = User.find_by(session[:name])
    # # binding.pry
    # $prompt.select("Ok, here are your previous reports: ") { |menu|
    #   current_user.reports.each do |report|
    #       menu.choice report.title, -> {""}
    #     end
    # }
    # current_user.reports
    "deleting"
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
