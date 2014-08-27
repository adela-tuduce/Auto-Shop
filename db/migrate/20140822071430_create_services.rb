class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.datetime :time
      t.integer :price
      t.timestamps
    end
  end
end
