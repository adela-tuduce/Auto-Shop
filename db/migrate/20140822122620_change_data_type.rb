class ChangeDataType < ActiveRecord::Migration
  def change
  	 change_column :services, :time, :integer
  end
end
