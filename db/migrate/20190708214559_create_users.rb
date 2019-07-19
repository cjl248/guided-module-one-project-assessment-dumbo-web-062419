# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.2]

  def change
    create_table :users do |t|
      t.string :name              # User's name #
      t.integer :vision_rating    # User's self-assigned vision rating from 1-5. #
      t.integer :love_animals     # 0 = false; 1 = true #
    end
  end
end
