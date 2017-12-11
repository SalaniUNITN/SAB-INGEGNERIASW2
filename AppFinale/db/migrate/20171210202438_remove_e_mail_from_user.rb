class RemoveEMailFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :EMail, :string
  end

end
