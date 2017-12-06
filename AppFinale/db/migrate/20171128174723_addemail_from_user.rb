class AddemailFromUser < ActiveRecord::Migration[5.1]
  def up
    remove_column :users, :EMail, :string
    add_column :users, :email, :string
  end
  def down
    remove_column :users, :email, :string
    add_column :users, :EMail, :string
  end
end
