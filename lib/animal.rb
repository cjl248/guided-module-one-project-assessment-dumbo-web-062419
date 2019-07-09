<<<<<<< HEAD
class Animal < ActiveRecord::Base
	has_many :reports
	has_many :users, through: :reports
	
=======
# frozen_string_literal: true

class Animal < ActiveRecord::Base
  has_many :reports
  has_many :users, through: :reports
>>>>>>> Changes through
end
