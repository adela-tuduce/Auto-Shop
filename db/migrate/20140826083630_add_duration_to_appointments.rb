class AddDurationToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :duration, :integer
  end
end
