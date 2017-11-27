class CreateHours < ActiveRecord::Migration[5.1]
  def change
    create_table :hours do |t|
      t.string :name_user
      t.string :email
      t.string :hourly_wage
      t.string :NHour

      t.timestamps
    end
  end
end
