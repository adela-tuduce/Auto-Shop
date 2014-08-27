class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :car_id
      t.time :hour
      t.date :date
      t.integer :workplace_id

      t.timestamps
    end
  end
end
