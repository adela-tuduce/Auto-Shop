class CreateMechanicServices < ActiveRecord::Migration
  def change
    create_table :mechanic_services do |t|
      t.integer :mechanic_id
      t.integer :service_id

      t.timestamps
    end
  end
end
