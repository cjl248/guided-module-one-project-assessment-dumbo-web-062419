class Animal < ActiveRecord::Base
  has_many :reports
  has_many :users, through: :reports
end
