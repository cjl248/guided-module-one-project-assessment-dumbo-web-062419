# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.2]

  def change
    create_table :users do |t|
      t.string :name
      t.text :what_would_you_do   # User response to a hypothetical situation. #
      t.boolean :is_alive         # Can user correctly discern a cat from a dog? #
      t.integer :vision_rating    # User's self-assigned vision rating from 1-5. #
      t.boolean :is_animal_lover  # Boolean returning true if yes, false if no. #
      t.string :phone_number      # User's phone number as a string. #
      t.string :home_suburb       # Suburb where the user lives. #
    end
  end
end
