class CreateAnimals < ActiveRecord::Migration[5.2]

  def up; end

  def down; end

  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.string :species
      t.string :description
      t.integer :sightings
      t.string :last_seen
      t.boolean :found
    end
  end
end
