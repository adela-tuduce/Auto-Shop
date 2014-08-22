class CreateWorkplaces < ActiveRecord::Migration
  def change
    create_table :workplaces do |t|
      t.integer :number

      t.timestamps
    end
  end
end
