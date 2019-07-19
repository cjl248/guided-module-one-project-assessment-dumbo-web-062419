# frozen_string_literal: true

class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name                  # Animal's name reported by User. #
      t.integer :age                  # Animal's age ''. #
      t.string :eye_color             # Animal's eye color ''. #
      t.text :description             # User's description of Animal. #
      t.boolean :is_healthy           # User's opinion on Animal's health. #
      t.boolean :is_found             # Animal's status. #
    end
  end
end
