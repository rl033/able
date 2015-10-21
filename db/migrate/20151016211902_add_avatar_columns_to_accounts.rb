class AddAvatarColumnsToAccounts < ActiveRecord::Migration
  def up
    add_attachment :accounts, :avatar
  end

  def down
    remove_attachment :accounts, :avatar
  end
end
