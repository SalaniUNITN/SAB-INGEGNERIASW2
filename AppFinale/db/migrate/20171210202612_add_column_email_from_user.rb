class AddColumnEmailFromUser < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :Email, :string
  end
  def down
    remove_column :users, :EMail, :string
  end
end
