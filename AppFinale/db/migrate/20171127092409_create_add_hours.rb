class CreateAddHours < ActiveRecord::Migration[5.1]
  def change
    create_table :add_hours do |t|
      t.string :name
      t.string :email
      t.integer :Hourly_Wage
      t.decimal :NHour
      t.boolean :Paid

      t.timestamps
    end
  end
end
