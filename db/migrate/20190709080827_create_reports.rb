class CreateReports < ActiveRecord::Migration[5.2]

  def change
    create_table :reports do |t|
      t.integer :month
      t.string :title
      t.string :city
      t.integer :user_id
      t.integer :animal_id
    end
  end
  
end
