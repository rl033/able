class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :location
      t.string :industry
      t.string :about
      t.string :year_founded
      t.string :business_type
      t.string :size
      t.string :website

      t.timestamps null: false
    end
  end
end
