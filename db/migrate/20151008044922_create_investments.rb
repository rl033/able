class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.integer :organization_id
      t.integer :project_id
      t.integer :amount

      t.timestamps null: false
    end
  end
end
