class CreateReports < ActiveRecord::Migration[5.2]

  def change
    create_table :reports do |t|
      t.datetime :date              # Date of report. #
      t.string :title               # Title of report. #
      t.text :content               # Description of Animal spotted by User. #
      t.string :sighting_suburb     # Suburb where User spotted Animal. #
      t.integer :confidence         # User's confidence on report details. #
      t.integer :user_id            # Foreign Key belonging to User. #
      t.integer :animal_id          # Foreign Key belonging to Animal. #
    end
  end
end
