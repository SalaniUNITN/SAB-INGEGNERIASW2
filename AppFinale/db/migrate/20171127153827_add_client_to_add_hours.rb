class AddClientToAddHours < ActiveRecord::Migration[5.1]
  def change
    add_reference :add_hours, :client, foreign_key: true
  end
end
