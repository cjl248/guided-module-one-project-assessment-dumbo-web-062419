require_relative '../config/environment'

#### CLEAR DATABASE ####
clear_database()


#### CREATE USER ####
user_hash = create_new_user_hash()
new_user = User.create(user_hash)


#### CREATE ANIMAL, CREATE REPORT, SET FOREIGN KEYS ####
animal_hash = create_new_animal_hash()
new_animal = Animal.create(animal_hash)


#### CREATE REPORT WITH FOREIGN KEYS ####
report_hash = create_new_report_hash()
report_hash[:user_id] = new_user.id
report_hash[:animal_id] = new_animal.id
new_report = Report.create(report_hash)

# binding.pry
#
# puts "ok"
