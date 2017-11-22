class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :p_iva
      t.string :city
      t.string :street
      t.string :cap
      t.string :street_number

      t.timestamps
    end
  end
end
