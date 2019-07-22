class CreateAnimals < ActiveRecord::Migration[5.2]

  def change
    create_table :animals do |t|
      t.string :eye_color
      t.string :fur_color
      t.string :is_healthy
    end
  end
  
end
