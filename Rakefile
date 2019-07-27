require_relative 'config/environment'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)

  puts "!------CONSOLE START---------------------------!"

  Pry.start

  puts "!------CONSOLE END-----------------------------!"

end
