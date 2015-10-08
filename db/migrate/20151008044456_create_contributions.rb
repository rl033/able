class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.integer :student_id
      t.integer :project_id
      t.string :role
      
      t.timestamps null: false
    end
  end
end
