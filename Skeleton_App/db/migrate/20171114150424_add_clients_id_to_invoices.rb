class AddClientsIdToInvoices < ActiveRecord::Migration[5.1]
  def change
  end

  def up
    add_column :clients_id, :users_id, :string

    Invoice.find_each  do|invoice|
      invoice.update_column :clinets_id, client.Name
    end

    
end
