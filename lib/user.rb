# frozen_string_literal: true

class User < ActiveRecord::Base
  has_many :reports
  has_many :animals, through: :reports
end
