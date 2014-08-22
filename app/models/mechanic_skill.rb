class MechanicSkill < ActiveRecord::Base
  has_many :mechanics
  has_many :skills
end
