class RemoveTable < ActiveRecord::Migration
  def change
  	drop_table :mechanic_skills
  end
end
