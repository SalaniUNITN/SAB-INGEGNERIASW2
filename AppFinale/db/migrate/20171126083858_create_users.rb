class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :Name
      t.string :Surname
      t.string :EMail
      t.string :Telephone
      t.string :Partita_Iva
      t.string :CF
      t.string :Street_name
      t.string :cap
      t.string :city
      t.string :street_number

      t.timestamps
    end
  end
end
