class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :daily_bill
      t.string :total_bill

      t.timestamps
    end
  end
end
