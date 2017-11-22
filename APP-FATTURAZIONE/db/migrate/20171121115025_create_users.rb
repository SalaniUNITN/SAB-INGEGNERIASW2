class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :telephone
      t.string :p_iva
      t.string :cf
      t.string :street_name
      t.string :cap
      t.string :city
      t.string :street_number

      t.timestamps
    end
  end
end
