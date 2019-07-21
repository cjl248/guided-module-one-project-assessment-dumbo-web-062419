# frozen_string_literal: true

class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.integer :age
      t.string :eye_color
      t.string :fur_color
      t.boolean :is_healthy     
    end
  end
end
