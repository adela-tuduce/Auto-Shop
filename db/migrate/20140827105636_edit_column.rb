class EditColumn < ActiveRecord::Migration
  def change
  	change_column :appointments, :hour, :datetime
  	remove_column :appointments, :date
  end
end
