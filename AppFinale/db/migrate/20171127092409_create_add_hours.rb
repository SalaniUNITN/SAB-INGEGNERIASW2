class CreateAddHours < ActiveRecord::Migration[5.1]
  def change
    create_table :add_hours do |t|
      t.string :name
      t.string :email
      t.string :Hourly_Wage
      t.string :NHour
      t.string :Paid

      t.timestamps
    end
  end
end
