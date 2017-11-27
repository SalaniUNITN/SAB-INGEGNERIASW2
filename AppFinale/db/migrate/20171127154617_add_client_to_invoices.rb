class AddClientToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_reference :invoices, :client, foreign_key: true
  end
end
