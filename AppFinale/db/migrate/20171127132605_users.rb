class Users < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :Total_Bill, :Integer
  end
  def down
    remove_column :users, :Total_Bill
  end
end
