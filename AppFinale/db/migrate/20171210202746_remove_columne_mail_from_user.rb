class RemoveColumneMailFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :e_mail, :string
  end
end
