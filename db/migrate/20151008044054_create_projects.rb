class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :industry
      t.string :location
      t.integer :total_investment
      t.datetime :start_date
      t.integer :views
      t.integer :rating

      t.timestamps null: false
    end
  end
end
