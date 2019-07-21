# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.2]

  def change
    create_table :users do |t|
      t.string :name
      t.integer :vision_rating
      t.boolean :love_animals
    end
  end
end
