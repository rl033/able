class CreateProjectImages < ActiveRecord::Migration
  def change
    create_table :project_images do |t|
      t.string :caption
      t.integer :project_id
      t.attachment :photo

      t.timestamps null: false
    end
  end
end
