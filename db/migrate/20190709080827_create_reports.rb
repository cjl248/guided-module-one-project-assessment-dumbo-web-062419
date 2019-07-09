class CreateReports < ActiveRecord::Migration[5.2]

  def up; end

  def down; end

  def change
    create_table :reports do |t|
      t.string :title
      t.string :content
      t.string :location
      t.datetime :date
    end
  end
end
