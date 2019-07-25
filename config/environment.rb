require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')

#config.active_record.logger = nil

require_all 'lib'
require_relative "../bin/methods.rb"
