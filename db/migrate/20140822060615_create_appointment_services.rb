class CreateAppointmentServices < ActiveRecord::Migration
  def change
    create_table :appointment_services do |t|
      t.integer :appointment_id
      t.integer :service_id

      t.timestamps
    end
      add_index :appointment_services, [:appointment_id, :service_id], unique: true
  end
end
