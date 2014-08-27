class CreateMechanics < ActiveRecord::Migration
  def change
    create_table :mechanics do |t|
      t.string :name
      t.integer :age
      t.integer :experience

      t.timestamps
    end
  end
end
