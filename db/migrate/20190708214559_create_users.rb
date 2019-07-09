# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.2]
  def up; end

  def down; end

  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :suburb
    end
  end
end
