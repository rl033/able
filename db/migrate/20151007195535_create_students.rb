class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :school
      t.string :location
      t.string :industry

      t.timestamps null: false
    end
  end
end
