class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :hours
      t.string :hourly_wage

      t.timestamps
    end
  end
end
