class Skill < ActiveRecord::Base
  has_many :mechanic_skills
  has_many :mechanics,  through: :mechanic_skills
  validates(:name, presence: true)
end
