class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :appointments, :duration
  end
end
