class CreateReports < ActiveRecord::Migration[5.2]

  def change
    create_table :reports do |t|
      t.string :date                # String in form of MM/DD/YYYY # 
      t.string :title               # Title of report #
      t.text :content               # Description of Animal spotted by User #
      t.string :suburb              # Suburb where User spotted Animal #
      t.integer :user_id            # Foreign Key belonging to User #
      t.integer :animal_id          # Foreign Key belonging to Animal # 
    end
  end
end
