class AddColumnsToProjects < ActiveRecord::Migration
  def change
    add_attachment :projects, :icon
  end
end
