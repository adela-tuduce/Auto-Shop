class CreateMechanicSkills < ActiveRecord::Migration
  def change
    create_table :mechanic_skills do |t|
      t.integer :mechanic_id
      t.integer :skill_id

      t.timestamps
    end
      add_index :mechanic_skills, [:mechanic_id, :skill_id], unique: true
  end
end
